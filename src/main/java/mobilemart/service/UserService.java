package mobilemart.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import mobilemart.dao.impl.UserDaoImpl;
import mobilemart.model.User;


@Service
@Transactional
public class UserService {
	@Autowired
	UserDaoImpl dao;

	public void addUser(User u) {
		dao.addUser(u);
	}

	public ArrayList<User> getAllUsers() {
		return dao.getAllUsers();
	}
}
