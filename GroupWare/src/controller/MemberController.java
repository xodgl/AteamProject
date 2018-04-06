package controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.MemberDBMybatis;
//import member.MemDBMybatis;
import model.MemberDataBean;

@Controller
@RequestMapping("/member")
public class MemberController{

	MemberDBMybatis dbPro = MemberDBMybatis.getInstance();
	

	//�α��� �������� �̵�
	@RequestMapping("/index")
	public String index(Model model) {
		return "index";
	}
	
	
	//�α��� ���� ó��, ������ �̵�
	@RequestMapping(value="/loginDb", method=RequestMethod.POST)
	public String loginDb(Model model,HttpSession session,String id, String pw) {
		//�α���üũ
		int pwcheck = dbPro.login(id, pw);
		String name = dbPro.getname(id);
		session.setAttribute("name", name);
		session.setAttribute("id", id);
		model.addAttribute("pwcheck",pwcheck);		
		if(id.equals("admin") && pwcheck==1) {
			return "/common/admin";  //jsp ������ ��������.
		}else
		return  "loginDb"; 
	}
	
	//������������ �̵�
	@RequestMapping("/mainBoard")
	public String main(Model model,HttpSession session) {
		String name = (String) session.getAttribute("name");
		model.addAttribute("name", name);
		return "board/mainBoard";
	}
	
	//�α׾ƿ�
	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		//���Ǿ��̵� �ΰ��� �ƴҶ��� �α׾ƿ�.
		if(session.getAttribute("id") != null){
			session.invalidate();	//���� ����
		}
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		return mav; 
	}
	
}

