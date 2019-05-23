package com.spring.mongo.resources;


import com.spring.mongo.model.Users;
import com.spring.mongo.repository.UserRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
@RequestMapping
public class userResources {


    private UserRepository userRepository;

    public userResources(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping("/all")
    public List<Users> getAll() {
        return userRepository.findAll();
    }

    @RequestMapping("home")
    public ModelAndView home()
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");
        return mv;
    }


    @RequestMapping("insert")
    public ModelAndView show(Users use1)
    {
        String yes = null;
        ModelAndView mv = new ModelAndView();
        if (use1.getCpass().isEmpty()|| use1.getUser().isEmpty()|| use1.getPass().isEmpty()) {
            String err = "Please fill all fields";
            mv.addObject("obj",err);
            mv.setViewName("home");
        }
        else if (!use1.getPass().equals(use1.getCpass()))
        {
            String err = "Password not matched";
            mv.addObject("obj",err);
            mv.setViewName("home");
        }
        else {

                yes = "no";
            List<Users> us =  userRepository.findAll();

            for (Users ss: us)
            {
                  if (ss.getUser().equals(use1.getUser())){
                      yes = "yes";
                  }
            }
            
            if(yes.equals("no")) {
                userRepository.save(new Users(use1.getUser(),  use1.getPass()));
                mv.addObject("obj", use1);
                mv.setViewName("show");

            }  if (yes.equals("yes")){

                   
                String err = "Username already exist";
                mv.addObject("obj", err);
                mv.setViewName("home");
            }
        }
        return mv;
    }
    @RequestMapping("login")
    public ModelAndView login(Users use1) {
        String yes ;
        ModelAndView mv = new ModelAndView();
        if (use1.getUser().isEmpty() || use1.getPass().isEmpty()) {
            String err = "Please fill all fields";
            mv.addObject("obj", err);
            mv.setViewName("home");
        } else {
            yes = "no";
            Users usi = null;
            List<Users> us =  userRepository.findAll();

            for (Users ss: us)
            {
                if (ss.getUser().equals(use1.getUser())){
                    yes = "yes";
                  usi = ss ;
                }
            }
            if (yes == "yes"){
            if (usi.getUser().equals(use1.getUser()) && usi.getPass().equals(use1.getPass()))
            {
                mv.addObject("obj", use1);
                mv.setViewName("show");

            }
            else if(usi.getUser().equals(use1.getUser()) && !usi.getPass().equals(use1.getPass()))
            {
                String err = "Wrong Password";

                mv.addObject("obj", err);
                mv.setViewName("home");
            }
            }
            else
                {
                String err = "Please provide valid Username";

                mv.addObject("obj", err);
                mv.setViewName("home");
            }
        }
        return mv;
    }

     public Users getuser11( String id) {
        return userRepository.findById(id).get();
    }
  }