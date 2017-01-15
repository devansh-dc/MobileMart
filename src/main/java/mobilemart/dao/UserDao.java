package mobilemart.dao;

import java.util.ArrayList;
import mobilemart.model.User;

public interface UserDao {
	
	void addUser(User u);

	ArrayList<User> getAllUsers();

}
