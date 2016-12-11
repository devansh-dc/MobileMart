package mobilemart.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import mobilemart.model.Product;
import mobilemart.service.ProductService;

@Controller
public class AppController {
	@Autowired
	ProductService pservice;

	@Autowired
	ServletContext context;

	@RequestMapping(value = { "/", "/index" })
	public String showHome() {
		System.out.println("in controller");
		return "index";
	}

	@RequestMapping("/login")
	public String showLogin() {
		return "login";
	}

	@RequestMapping("/signup")
	public String showSignup() {
		return "signup";
	}

	@RequestMapping("/contactus")
	public String showContactus() {
		return "contactus";
	}

	@RequestMapping("/aboutus")
	public String showAboutus() {
		return "aboutus";
	}

	@RequestMapping("/allproducts")
	public String showAllproducts(Model model) {
		ArrayList<Product> plist = pservice.getAllProducts();
		model.addAttribute("productList", plist);
		return "allproducts";
	}

	@RequestMapping("/addproduct")
	public ModelAndView showAddproduct() {
		return new ModelAndView("addproduct", "product", new Product());
	}

	@RequestMapping("/addnewproduct")
	public String addNewProduct(@Valid @ModelAttribute("product") Product p, BindingResult result) {
		// --------validation check----------
		if (result.hasErrors()) {
			System.out.println("adding a blog has errors");
			return "addproduct";
		}

		else {
			// add a product by calling product service
			pservice.addProduct(p);
			// -----------------multipart---------------------------
			String filename = null;
			System.out.println(context);
			String path = context.getRealPath("/resources/" + p.getId() + ".jpg");
			System.out.println("Path = " + path);
			System.out.println("File name = " + p.getImage());// .getOriginalFilename());
			File f = new File(path);
			if (!p.getImage().isEmpty()) {
				try {
					filename = p.getImage().getOriginalFilename();
					byte[] bytes = p.getImage().getBytes();
					BufferedOutputStream bs = new BufferedOutputStream(new FileOutputStream(f));
					bs.write(bytes);
					bs.close();
					System.out.println("Image uploaded");

					// System.out.println("Data Inserted"+(res++));
				} catch (Exception ex) {
					System.out.println(ex.getMessage());
				}
			}
			return "index";
		}
	}

	@RequestMapping("/updateproduct")
	public ModelAndView showupdateproduct(@RequestParam("id") String id) {
		Product p = pservice.getProduct(Integer.parseInt(id));

		return new ModelAndView("updateproduct", "product", p);
	}

	@RequestMapping("/updateaproduct")
	public String updateproduct(@Valid @ModelAttribute("product") Product p, BindingResult result) {

		// --------validation check----------
		if (result.hasErrors()) {
			System.out.println("adding a blog has errors");
			return "updateproduct";
		}

		else {
			pservice.updateProduct(p);
			System.out.println("product is updated");
			return "allproducts";
		}
	}

	@RequestMapping("/deleteproduct")
	public ModelAndView showdeleteproduct(@RequestParam("id") String id) {
		Product p = pservice.getProduct(Integer.parseInt(id));
		pservice.deleteProduct(p);
		return new ModelAndView("allproducts", "product", p);
	}
}
