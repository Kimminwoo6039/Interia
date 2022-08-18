package com.ex.interia.controller;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ex.interia.service.MemberService;
import com.ex.interia.service.ProductService;
import com.ex.interia.vo.Criteria;
import com.ex.interia.vo.MemberVo;
import com.ex.interia.vo.PageMaker;
import com.ex.interia.vo.ProductVo;

@Controller
@RequestMapping("/product/**")
public class ProductController {

	
	public ProductService productService;
	
	@Autowired
	public ProductController(ProductService productService) {
		this.productService = productService;
	}
	
	
	@RequestMapping("write.do")
	public String kj() {
		return "product/write";
	}
	
	
	@RequestMapping("writeAction.do") //상품등록
	public String writeAction(ProductVo vo,HttpServletRequest request)throws Exception {
		
		
		String filename = "-"; //파일이름이 없으면 - 로 고정시키기
		if(!vo.getFile1().isEmpty()) { //값이 null 이 아닐때
			filename = vo.getFile1().getOriginalFilename(); // 파일이름은 내가 지정한 원본이름으로 지정
			
			
			try {
				ServletContext context = request.getSession().getServletContext(); //서블릿컨테이너와 통신
				String path = context.getRealPath("/resources/images/"); // 서버안에있는 실제 경로주소
				
				new File(path).mkdir(); //디렉토리 생성  상위디렉토리 없으면 생성불기
				vo.getFile1().transferTo(new File(path+filename));
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
		}
		System.out.println("여기");
		vo.setFilename(filename);
		productService.writeAction(vo);
		return "redirect:/product/list.do";
	}
	
	
	
	@RequestMapping("list.do")
	public ModelAndView list(ModelAndView mav,HttpSession session,Criteria cri) throws Exception{
		
		int productCnt = productService.cnt(cri); // 상품 게시물 
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri); //검색내용과 페이지 넣기
		pageMaker.setTotalcount(productCnt); // 상품 전체개수 넣기
		
		
		List<ProductVo> list = productService.list(cri); // 상품 리스트 뽑기
		mav.addObject("list", list); // 리스트
		mav.addObject("pageMaker", pageMaker); //페이징내용
		mav.setViewName("product/list"); // 페이지이동
		return mav;
		
	}
	
	
	@RequestMapping("edit/{product_code}")
	public ModelAndView edit(@PathVariable("product_code") int product_code,ModelAndView mav) {
		
		mav.setViewName("/product/edit");
		mav.addObject("list", productService.edit(product_code));
		return mav;
		
	}
	
	
	@RequestMapping("update.do")
	public String update(ProductVo vo,HttpServletRequest request) {
		
		String filename = "-";
		if(!vo.getFile1().isEmpty()) {
			filename = vo.getFile1().getOriginalFilename();
			
			try {
			 ServletContext servletContext = request.getSession().getServletContext(); //서버연결
			 String path = servletContext.getRealPath("/resources/images/");
			 
			 new File(path).mkdir(); //디렉토리 생성
			 vo.getFile1().transferTo(new File(path+filename));
			} catch (Exception e) {
                e.printStackTrace();
			}
			
			vo.setFilename(filename);
		}
		
		productService.update(vo);
		return "redirect:/product/list.do";
		
	}
	
	
	@RequestMapping("delete.do")
	public String delete(Integer product_code,HttpServletRequest request) {
		
		String filename = productService.file(product_code);
		
		if(filename !=null && filename.equals("-")) {
			ServletContext app = request.getSession().getServletContext();
			String path = app.getRealPath("/resources/images/");
			File f = new File(path+filename);
			
			if(f.exists())
				f.delete();
		}
		
		productService.delete(product_code);
		return "redirect:/product/list.do";
	}
	
	
	@RequestMapping("detail/{product_code}")
	public ModelAndView detail(@PathVariable("product_code") int product_code,ModelAndView mav) {
		
		mav.addObject("vo", productService.detail(product_code));
		mav.setViewName("/product/detail");
		return mav;
	}
	
	
}
