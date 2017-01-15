package mobilemart.dao;

import java.util.ArrayList;
import mobilemart.model.Product;

public interface ProductDao {
	void addProduct(Product p);

	ArrayList<Product> getAllProducts();

	Product getProduct(int id);

	void updateProduct(Product p);
	
	void deleteProduct(Product p);

	ArrayList<Product> getAndroid();
}
