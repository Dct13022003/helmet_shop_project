package vn.helmetshop.helmetshop.service;

import org.springframework.stereotype.Service;

import vn.helmetshop.helmetshop.domain.Role;
import vn.helmetshop.helmetshop.domain.User;
import vn.helmetshop.helmetshop.repository.RoleRepository;
import vn.helmetshop.helmetshop.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    public User createUser(User user) {
        User newUser = this.userRepository.save(user);
        return newUser;
    }

    public Role getRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }

}
