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
	
	
	@RequestMapping("writeAction.do") //�긽�뭹�벑濡�
	public String writeAction(ProductVo vo,HttpServletRequest request)throws Exception {
		
		
		String filename = "-"; //�뙆�씪�씠由꾩씠 �뾾�쑝硫� - 濡� 怨좎젙�떆�궎湲�
		if(!vo.getFile1().isEmpty()) { //媛믪씠 null �씠 �븘�땺�븣
			filename = vo.getFile1().getOriginalFilename(); // �뙆�씪�씠由꾩� �궡媛� 吏��젙�븳 �썝蹂몄씠由꾩쑝濡� 吏��젙
			
			
			try {
				ServletContext context = request.getSession().getServletContext(); //�꽌釉붾┸而⑦뀒�씠�꼫�� �넻�떊
				String path = context.getRealPath("/resources/images/"); // �꽌踰꾩븞�뿉�엳�뒗 �떎�젣 寃쎈줈二쇱냼
				
				new File(path).mkdir(); //�뵒�젆�넗由� �깮�꽦  �긽�쐞�뵒�젆�넗由� �뾾�쑝硫� �깮�꽦遺덇린
				vo.getFile1().transferTo(new File(path+filename));
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
		}
		System.out.println("�뿬湲�");
		vo.setFilename(filename);
		productService.writeAction(vo);
		return "redirect:/product/list.do";
	}
	
	
	
	@RequestMapping("list.do")
	public ModelAndView list(ModelAndView mav,HttpSession session,Criteria cri) throws Exception{
		
		int productCnt = productService.cnt(cri); // �긽�뭹 寃뚯떆臾� 
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri); //寃��깋�궡�슜怨� �럹�씠吏� �꽔湲�
		pageMaker.setTotalcount(productCnt); // �긽�뭹 �쟾泥닿컻�닔 �꽔湲�
		
		
		List<ProductVo> list = productService.list(cri); // �긽�뭹 由ъ뒪�듃 戮묎린
		mav.addObject("list", list); // 由ъ뒪�듃
		mav.addObject("pageMaker", pageMaker); //�럹�씠吏뺣궡�슜
		mav.setViewName("product/list"); // �럹�씠吏��씠�룞
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
			 ServletContext servletContext = request.getSession().getServletContext(); //�꽌踰꾩뿰寃�
			 String path = servletContext.getRealPath("/resources/images/");
			 
			 new File(path).mkdir(); //�뵒�젆�넗由� �깮�꽦
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
	
	
	@RequestMapping("best.do")
	public ModelAndView best(ModelAndView mav,HttpSession session,Criteria cri) throws Exception{
		
		int productCnt = productService.cnt(cri); // �긽�뭹 寃뚯떆臾� 
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri); //寃��깋�궡�슜怨� �럹�씠吏� �꽔湲�
		pageMaker.setTotalcount(productCnt); // �긽�뭹 �쟾泥닿컻�닔 �꽔湲�
		
		
		List<ProductVo> list = productService.best(); // �긽�뭹 由ъ뒪�듃 戮묎린
		mav.addObject("list", list); // 由ъ뒪�듃
		mav.addObject("pageMaker", pageMaker); //�럹�씠吏뺣궡�슜
		mav.setViewName("product/best"); // �럹�씠吏��씠�룞
		return mav;
		
	}
	
	
	@RequestMapping("today.do")
	public ModelAndView today(ModelAndView mav,HttpSession session,Criteria cri) throws Exception {
		
       int productCnt = productService.cnt(cri); 
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri); 
		pageMaker.setTotalcount(productCnt); 
		
		
		List<ProductVo> list = productService.today(); 
		mav.addObject("list", list);
		mav.addObject("pageMaker", pageMaker); 
		mav.setViewName("product/today"); 
		return mav;
		
		
		
	}
	
}
