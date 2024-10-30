package vn.helmetshop.helmetshop.controller.admin;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.validation.Valid;

import java.sql.Timestamp;
import vn.helmetshop.helmetshop.domain.User;
import vn.helmetshop.helmetshop.service.UploadFileService;
import vn.helmetshop.helmetshop.service.UserService;

@Controller
public class UserController {

    private final UserService userService;
    private final UploadFileService uploadFileService;
    private final PasswordEncoder passwordEncoder;

    public UserController(UserService userService, UploadFileService uploadFileService,
            PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.uploadFileService = uploadFileService;
        this.passwordEncoder = passwordEncoder;
    }

    @RequestMapping("/admin/user")
    public String getUser() {
        return "admin/user/show";
    }
    // @RequestMapping("admin/user/detail")
    // public String updateUser() {
    // return "admin/user/detail";
    // }

    @GetMapping("/admin/user/create")
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @PostMapping(value = "/admin/user/create")
    public String createUser(Model model,
            @ModelAttribute("newUser") @Valid User newUser,
            BindingResult newUserBindingResult,
            @RequestParam("avatarFile") MultipartFile file) {

        if (newUserBindingResult.hasErrors()) {
            return "admin/user/create";
        }
        Timestamp creat_at = new Timestamp(System.currentTimeMillis());
        String fileName = this.uploadFileService.handleSaveUploadFile(file, "avatar");
        String hashPassword = this.passwordEncoder.encode(newUser.getPassword());
        newUser.setRole(this.userService.getRoleByName(newUser.getRole().getName()));
        newUser.setAvatar(fileName);
        newUser.setCreated_at(creat_at);
        newUser.setPassword(hashPassword);
        this.userService.createUser(newUser);
        return "redirect:/admin/user";
    }
}
