package com.spring.mongo.model;


import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class Users {

    private String user;
    private String pass;
    private String cpass;

    public String getCpass() {
        return cpass;
    }

    public void setCpass(String cpass) {
        this.cpass = cpass;
    }
    /*  private String email;*/

   /* public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;*/
   /* }*/

    public Users(String user,  String pass) {
        this.user = user;
        /*this.email = email;*/
        this.pass = pass;

    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
}