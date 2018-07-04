package com.indiya.action.recruit;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.indiya.action.Action;
import com.indiya.member.dto.MemberDto;
import com.indiya.recruit.model.RecruitDto;
import com.indiya.recruit.service.RecruitServiceImpl;
import com.indiya.util.ParameterCheck;

public class RecruitViewAction implements Action {

	private static RecruitViewAction RecruitViewAction;
	
	static {
		RecruitViewAction = new RecruitViewAction();
	}
	
	private RecruitViewAction() {
		
	}

	public static RecruitViewAction getRecruitViewAction() {
		return RecruitViewAction;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "/Recruit/list.jsp?";
		HttpSession session = request.getSession(); 
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");

		if(memberDto != null) { 
			int no = ParameterCheck.naNToZero(request.getParameter("no")+"");
			if(no != 0) {
				RecruitDto RecruitDto = RecruitServiceImpl.getRecruitService().viewArticle(no);
				
				request.setAttribute("article", RecruitDto);
				path = "/Recruit/view.jsp?";
			}
		} else {
			path = "/Recruit/list.jsp?";//TODO 나중에 로그인 페이지로 이동시켜라.
		}
		return path;
	}

}
