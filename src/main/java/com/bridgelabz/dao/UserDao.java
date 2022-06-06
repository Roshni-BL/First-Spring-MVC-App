package com.bridgelabz.dao;

import com.bridgelabz.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import javax.transaction.Transactional;
import java.util.List;

@Component
public class UserDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

@Transactional
    public void addUser(User user){
        this.hibernateTemplate.save(user);
    }

    public List<User> getAllUsers(){
        List<User> userList = this.hibernateTemplate.loadAll(User.class);
        return userList;
    }

    @Transactional
    public void deleteUser(int id){
        User user = this.hibernateTemplate.load(User.class, id);
        this.hibernateTemplate.delete(user);
    }

    public User getUser(int id){
        return this.hibernateTemplate.get(User.class, id);
    }
}
