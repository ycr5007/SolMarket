package com.solmarket.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.solmarket.dto.AttachDTO;
import com.solmarket.dto.AuthDTO;
import com.solmarket.dto.UserDTO;
import com.solmarket.mapper.AttachMapper;
import com.solmarket.mapper.MemberMapper;
import com.solmarket.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/member/*")
public class MyPageController {

	@Autowired
	private MemberService service;
	
	@Autowired
	private MemberMapper mapper;
	
	@Autowired
	private AttachMapper attachMapper;
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	

	
	@GetMapping("/myPagePwCheck")
	public void myPagePwCheckGet() {
		log.info("myPagePwCheck 페이지 요청");
	}
	
	@PostMapping("/myPagePwCheck")
	public String myPagePwCheckPost(@RequestParam("userPw") String userPw, String userId) {
		log.info("userId : " + userId);
		log.info("userPw : " + userPw);
		
		String dbPassword = service.checkPw(userId);

		if(encoder.matches(userPw, dbPassword)) {
			return "redirect:/member/myPageEdit";
		}else {
			return "redirect:/member/myPagePwCheck";
		}
	}
	
	@GetMapping("/myPageEdit")
	public void myPageEditGet(Principal principal, Model model) {
		log.info("myPageEdit 페이지 요청");
		
		String userid = principal.getName();
		UserDTO userDto = mapper.read(userid);
		model.addAttribute("user", userDto);
	}
	
	@PostMapping("/update")
	public String regist(UserDTO update) {
		log.info("회원정보 수정 요청" + update);
		
		service.updateUser(update);
		
		//첨부파일 없는 경우
		if(update.getAttach() == null) {
			return "redirect:/member/myPageEdit";
		}
		
		
		String section = "user";
		
		attachMapper.insertImg(update.getAttach(), section);
		return "redirect:/member/myPageEdit";

	}
		
	// 탈퇴 post
	@PostMapping("/leaveResult")
	public String leavePost(String userId, HttpSession session, RedirectAttributes rttr) {
		log.info("탈퇴 요청"+ userId);
		
		int result = service.delete(userId);
		
		if (result > 0 ) {
			session.invalidate();
			SecurityContextHolder.getContext().setAuthentication(null);
			rttr.addFlashAttribute("msg", "회원비활성화");
			return "redirect:/";
		} else {
			return "redirect:/member/myPageEdit";
		}
	}
	
	@GetMapping("/updateAuth")
	public void updateAuthGET() {
		log.info("updateAuth 페이지 요청");
	}
	
	@PostMapping("/updateAuthResult")
	public String updateAuthResult(AuthDTO authDto) {
		
		service.reqAuth(authDto);
		
		return "redirect:/";
	}
	
	@PostMapping("/updatePw")
	public String updatePw(String userId, String userPw, HttpSession session, RedirectAttributes rttr) {
		service.updatePw2(userId, userPw);
		
		session.invalidate();
		SecurityContextHolder.getContext().setAuthentication(null);
		rttr.addFlashAttribute("msg", "비밀번호 변경 완료");
		
		return "redirect:/";
	}
			
}
