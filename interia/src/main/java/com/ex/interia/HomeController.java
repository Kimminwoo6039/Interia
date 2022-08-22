package com.ex.interia;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ex.interia.service.ProductService;
import com.ex.interia.vo.OrderVo;
import com.ex.interia.vo.ProductVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
public ProductService productService;
	
	@Autowired
	public HomeController(ProductService productService) {
		this.productService = productService;
	}
	
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		//오늘의상품 4개 뽑아오기
		List<ProductVo> list = productService.list4();
		
		//베스트 상품  16개 뽑기
		List<ProductVo> list1 = productService.list16();
		
		
		model.addAttribute("list", list);
		model.addAttribute("list1",list1);
		
		return "main";
	}
	
	
}
