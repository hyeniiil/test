package com.indiya.action.community;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.community.service.CommunityServiceImpl;
import com.indiya.util.ParameterCheck;

public class CommunityDeleteCommentAction implements Action {

private static CommunityDeleteCommentAction communityDeleteCommentAction;
	
	static {
		communityDeleteCommentAction = new CommunityDeleteCommentAction();
	}
	
	private CommunityDeleteCommentAction() {}

	public static CommunityDeleteCommentAction getCommunityDeleteCommentAction() {
		return communityDeleteCommentAction;
	}
	
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("���䰡");
		int boardno = ParameterCheck.naNToZero(request.getParameter("boardno"));
		int no = ParameterCheck.naNToZero(request.getParameter("no"));
		
		System.out.println("����ѹ�"+boardno);
		System.out.println("�ѹ�����"+no);
		System.out.println("�����Ϸ� ���� ��");
		CommunityServiceImpl.getCommunityService().deleteComment(boardno, no);
		System.out.println("�����ϰ� ��");
		String path = "/community?act=viewarticle&no="+boardno;
		System.out.println("���� ����...????");
		return path;
		
	}

}
