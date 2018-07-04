package com.indiya.action.recruit;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.indiya.action.Action;
import com.indiya.member.dto.MemberDto;
import com.indiya.recruit.model.RecruitDto;
import com.indiya.recruit.service.RecruitServiceImpl;
import com.indiya.util.ParameterCheck;

public class RecruitWriteAction implements Action {
	
	private static RecruitWriteAction RecruitWriteAction;
	
	static {
		RecruitWriteAction = new RecruitWriteAction();
	}
	
	private RecruitWriteAction() {}

	public static RecruitWriteAction getRecruitWriteAction() {
		return RecruitWriteAction;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "/Recruit/writefail.jsp?";
		HttpSession session = request.getSession(); 
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		if(memberDto != null) { 
			RecruitDto RecruitDto = new RecruitDto();	
			RecruitDto.setMember_id(memberDto.getId());
			RecruitDto.setTitle(request.getParameter("title"));
			RecruitDto.setContents(request.getParameter("contents"));
			
			int no = RecruitServiceImpl.getRecruitService().writeArticle(RecruitDto);
			session.setAttribute("board_no", no);
			if(no != 0) {
				path = "/Recruit/writeok.jsp?no=" + no + "&";
			}
		} else {
			path = "/Recruit/list.jsp?";//TODO 나중에 로그인 페이지로 이동시켜라.
		}
		return path;
	}

}










