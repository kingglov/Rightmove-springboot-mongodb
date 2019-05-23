package com.spring.mongo.Daos;

import com.spring.mongo.model.Users;
import com.spring.mongo.repository.UserRepository;

public class userDaos {

    private UserRepository userRepository;


    public Users userDao(String user ,String email, String pass) {
               Users i = userRepository.save(new Users(user,/*email,*/pass));
         return  i;
        }
    /*public  userDaos(String user, String pass) {

      *//*
        if (u.getEmail().equals(user) && u.getPass().equals(pass)) {
            *//*
        }*/
    }








