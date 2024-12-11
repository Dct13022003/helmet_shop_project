package vn.helmetshop.helmetshop.controller.admin;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import vn.helmetshop.helmetshop.domain.User;
import vn.helmetshop.helmetshop.service.UserService;

@Controller
public class DashboardController {
    private final UserService userService;

    public DashboardController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/admin")
    public String getDashboardPage() {
        return "admin/dashboard/show";
    }

    @RequestMapping("/admin/profile")
    public String getProfilePage(Principal principal, Model model) {
        String username = principal.getName();
        User user = this.userService.getUserByEmail(username);
        model.addAttribute("inforUser", user);
        return "admin/dashboard/profile";
    }

    @PostMapping("/admin/logout")
    public String postLogout() {
        
        return "admin/dashboard/profile";
    }
}
