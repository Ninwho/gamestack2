package com.gamestack.gamestack2.controller;

import com.gamestack.gamestack2.model.User;
import com.gamestack.gamestack2.repository.UserRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/users")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping
    public List<User> list() {
        return userRepository.findAll();
    }

    @GetMapping
    @RequestMapping("{id}")
    public User get(@PathVariable Long id) {
        return userRepository.getOne(id);
    }

    @PostMapping
    public User create(@RequestBody final User user) {
        return userRepository.saveAndFlush(user);
    }

    @RequestMapping(value="{id}", method=RequestMethod.DELETE)
    public void delete(@PathVariable Long id) {
        userRepository.deleteById(id);
    }

    @RequestMapping(value="{id}", method=RequestMethod.PUT)
    public User update(@PathVariable Long id,@RequestBody User user) {
        User existingUser = userRepository.getOne(id);
        BeanUtils.copyProperties(user, existingUser,"user_id");
        return userRepository.saveAndFlush(existingUser);
    }

}
