package com.spring.mongo.repository;

import com.spring.mongo.model.Users;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface UserRepository  extends MongoRepository<Users, String > {


}
