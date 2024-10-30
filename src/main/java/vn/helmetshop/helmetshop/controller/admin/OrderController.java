package vn.helmetshop.helmetshop.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderController {
    @RequestMapping("/admin/order")
    public String getOrder() {
        return "/admin/order/show";
    }
}
