package com.bridgelabz.controller;

import com.bridgelabz.dao.UserDao;
import com.bridgelabz.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserDao userDao;

    @RequestMapping("/")
    public ModelAndView homePage(Model model){
        List<User> userList = userDao.getAllUsers();
        model.addAttribute("user", userList);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        return modelAndView;
    }

    @RequestMapping(value = "/handle-user", method = RequestMethod.POST)
    public RedirectView handleUser(@ModelAttribute User user, HttpServletRequest request){
        System.out.println(user);
        userDao.addUser(user);
        RedirectView view = new RedirectView();
        view.setUrl(request.getContextPath() + "/");
        return view;
    }

    @RequestMapping("add-user")
    public ModelAndView addUser(User user){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("RegistrationForm");
        return modelAndView;
    }

    @RequestMapping("delete/{userId}")
    public RedirectView deleteUser(@PathVariable("userId") int userId, HttpServletRequest request){
        this.userDao.deleteUser(userId);
        RedirectView view = new RedirectView();
        view.setUrl(request.getContextPath() + "/");
        return view;
    }

    @RequestMapping("update/{userId}")
    public String updateUser(@PathVariable("userId") int userId, Model model){
        User user = this.userDao.getUser(userId);
        model.addAttribute("user", user);

        return "UpdateForm";


    }
}
