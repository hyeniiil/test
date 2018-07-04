package com.indiya.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.factory.CommunityActionFactory;
import com.indiya.util.*;

@WebServlet("/recruit")
public class RecruitController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String act = request.getParameter("act");
		int pg = ParameterCheck.naNToOne(request.getParameter("pg"));
		String key = ParameterCheck.nullToBlank(request.getParameter("key"));
		String word = ParameterCheck.nullToBlank(request.getParameter("word"));
		int no = ParameterCheck.naNToZero(request.getParameter("no"));

		String queryString = "pg=" + pg + "&key=" + key + "&word=" + Encoder.urlUtf(word)+"&no="+no;
		System.out.println(queryString);
		String path = "/list.jsp";
		
		if("listarticle".equals(act)) {
			
			path = CommunityActionFactory.getCommunityListAction().execute(request, response);
			path += queryString;
			PageMove.forward(request, response, path);
		} else if("mvwrite".equals(act)) {
			path = "/Community/write.jsp?" + queryString;
			PageMove.redirect(request, response, path);
		} else if("writearticle".equals(act)) {
			path = CommunityActionFactory.getCommunityWriteAction().execute(request, response);
			path += queryString;
			PageMove.redirect(request, response, path);
		} else if("viewarticle".equals(act)) {
			path = CommunityActionFactory.getCommunityViewAction().execute(request, response);
			path += queryString;
			PageMove.forward(request, response, path);
		} else if("deletearticle".equals(act)) {
			path = CommunityActionFactory.getCommunityDeleteAction().execute(request, response);
			path += queryString;
			PageMove.redirect(request, response, path);
		} else if("getarticle".equals(act)) {
			path = CommunityActionFactory.getCommunityGetArticleAction().execute(request, response);
			path += queryString;
			PageMove.forward(request, response, path);
		} else if("modifyarticle".equals(act)) {
			path = CommunityActionFactory.getCommunityModifyAction().execute(request, response);
			path += queryString;
			PageMove.redirect(request, response, path);
		} else if("".equals(act)) {
			
		} else if("".equals(act)) {
			
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding(IndiyaConstance.ENCODING);
		doGet(request, response);
	}

}
