package mobilemart.dao.impl;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import mobilemart.dao.UserDao;
import mobilemart.model.User;

@Repository
public class UserDaoImpl implements UserDao {
	@Autowired
	SessionFactory sessionFactory;

	public void addUser(User u) {
		// insert user
		Session session = sessionFactory.openSession();
		session.save(u);// insert
		session.flush();
	}

	public ArrayList<User> getAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}
}
