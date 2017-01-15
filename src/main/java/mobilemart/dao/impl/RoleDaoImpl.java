package mobilemart.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import mobilemart.model.Role;

@Repository
public class RoleDaoImpl {
@Autowired
SessionFactory sessionFactory;

public void addRole(Role r) {
	// insert role
	Session session = sessionFactory.openSession();
	session.save(r);// insert
	session.flush();
}

}
