package vn.helmetshop.helmetshop.controller.client;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import vn.helmetshop.helmetshop.domain.Cart;
import vn.helmetshop.helmetshop.domain.CartDetail;
import vn.helmetshop.helmetshop.domain.Order;
import vn.helmetshop.helmetshop.domain.User;
import vn.helmetshop.helmetshop.domain.dto.CategoryDTO;
import vn.helmetshop.helmetshop.domain.dto.ProductCriteriaDTO;
import vn.helmetshop.helmetshop.domain.dto.ProductShowDTO;
import vn.helmetshop.helmetshop.service.CategorySevice;
import vn.helmetshop.helmetshop.service.OrderService;
import vn.helmetshop.helmetshop.service.ProductService;

@Controller
public class ItemController {
    private final ProductService productService;
    private final CategorySevice categorySevice;
    private final OrderService orderService;

    public ItemController(ProductService productService, CategorySevice categorySevice, OrderService orderService) {
        this.productService = productService;
        this.categorySevice = categorySevice;
        this.orderService = orderService;
    }

    @GetMapping("/products")
    public String getProduct(Model model, ProductCriteriaDTO productCriteriaDTO, HttpServletRequest request) {
        int page = 1;
        try {
            if (productCriteriaDTO.getPage().isPresent()) {
                // convert from String to int
                page = Integer.parseInt(productCriteriaDTO.getPage().get());
            } else {
                // page = 1
            }
        } catch (Exception e) {
            // page = 1
            // TODO: handle exception
        }

        // check sort price
        Pageable pageable = PageRequest.of(page - 1, 9);

        Page<ProductShowDTO> prs = this.productService.getProductsWithSpec(pageable, productCriteriaDTO);

        List<ProductShowDTO> products = prs.getContent().size() > 0 ? prs.getContent()
                : new ArrayList<ProductShowDTO>();

        String qs = request.getQueryString();
        if (qs != null && !qs.isBlank()) {
            // remove page
            qs = qs.replace("page=" + page + "&", "");

        }

        model.addAttribute("productShow", products);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", prs.getTotalPages());
        model.addAttribute("queryString", qs);
        List<CategoryDTO> categories = this.categorySevice.getAllCategories();
        model.addAttribute("categoryShow", categories);

        return "user/product/show";
    }

    @GetMapping("/product/{id}")
    public String getProductDetail(Model model, @PathVariable long id) {
        ProductShowDTO product = this.productService.getProductByID(id);
        model.addAttribute("productDetail", product);
        model.addAttribute("cartDetail", new CartDetail());

        return "user/product/detail";
    }

    @PostMapping("/add-product-to-cart/{id}")
    public String addProductToCart(@ModelAttribute("CartDetail") CartDetail cartDetail, HttpServletRequest request,
            @PathVariable long id) {
        HttpSession session = request.getSession(false);
        String email = (String) session.getAttribute("email");
        this.productService.handleAddProductToCart(cartDetail, session, email, id);
        return "redirect:/products";
    }

    @GetMapping("/cart")
    public String getCartPage(Model model, HttpServletRequest request) {
        User currentUser = new User();// null
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        currentUser.setId(id);

        Cart cart = this.productService.fetchByUser(currentUser);

        List<CartDetail> cartDetails = cart == null ? new ArrayList<CartDetail>() : cart.getCartDetails();

        double totalPrice = 0;
        for (CartDetail cd : cartDetails) {
            totalPrice += cd.getPrice() * cd.getQuantity();
        }

        model.addAttribute("cartDetails", cartDetails);
        model.addAttribute("totalPrice", totalPrice);

        model.addAttribute("cart", cart);
        return "user/cart/show";
    }

    @PostMapping("/delete-cart-product/{id}")
    public String deleteCartDetail(@PathVariable long id, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        long cartDetailId = id;
        this.productService.handleRemoveCartDetail(cartDetailId, session);
        return "redirect:/cart";
    }

    @GetMapping("/checkout")
    public String getCheckOutPage(Model model, HttpServletRequest request) {
        User currentUser = new User();// null
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        currentUser.setId(id);

        Cart cart = this.productService.fetchByUser(currentUser);

        List<CartDetail> cartDetails = cart == null ? new ArrayList<CartDetail>() : cart.getCartDetails();

        double totalPrice = 0;
        for (CartDetail cd : cartDetails) {
            totalPrice += cd.getPrice() * cd.getQuantity();
        }

        model.addAttribute("cartDetails", cartDetails);
        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("order", new Order());

        return "user/cart/checkout";
    }

    @PostMapping("/confirm-checkout")
    public String getCheckOutPage(@ModelAttribute("cart") Cart cart) {
        List<CartDetail> cartDetails = cart == null ? new ArrayList<CartDetail>() : cart.getCartDetails();
        this.productService.handleUpdateCartBeforeCheckout(cartDetails);
        return "redirect:/checkout";
    }

    @PostMapping("/place-order")
    public String handlePlaceOrder(Model model,
            HttpServletRequest request,
            @ModelAttribute("order") Order order) {
        User currentUser = new User();// null
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        currentUser.setId(id);
        this.productService.handlePlaceOrder(currentUser, session, order);

        return "redirect:/thanks";
    }

    @GetMapping("/thanks")
    public String getThankYouPage(@ModelAttribute("order") Order order) {

        return "user/cart/thank";
    }

    // @PostMapping("/add-product-from-view-detail")
    // public String handleAddProductFromViewDetail(
    // @RequestParam("id") long id,
    // @RequestParam("quantity") long quantity,
    // HttpServletRequest request) {
    // HttpSession session = request.getSession(false);

    // String email = (String) session.getAttribute("email");
    // this.productService.handleAddProductToCart(email, id, session, quantity);
    // return "redirect:/product/" + id;
    // }

    @GetMapping("/history-orders")
    public String getHistoryOrderPage(Model model, HttpServletRequest request) {
        User currentUser = new User();
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        currentUser.setId(id);
        List<Order> orders = this.orderService.getOrderByUser(currentUser);
        model.addAttribute("orders", orders);
        return "user/cart/history-order";
    }

}
