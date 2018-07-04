package com.indiya.action.recruit;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;

public class RecruitCommentAction implements Action {

	private static RecruitCommentAction RecruitComentAction;
	
	static {
		RecruitComentAction = new RecruitCommentAction();
	}
	
	private RecruitCommentAction() {}

	public static RecruitCommentAction getRecruitCommentAction() {
		return RecruitComentAction;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

}