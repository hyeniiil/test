package com.indiya.factory;

import com.indiya.action.*;

public class RecruitActionFactory {
	
	private static Action RecruitDeleteAction;
	private static Action RecruitListAction;
	private static Action RecruitModifyAction;
	private static Action RecruitComentAction;
	private static Action RecruitViewAction;
	private static Action RecruitWriteAction;
	private static Action RecruitGetArticleAction;
	
	
	static {
		RecruitDeleteAction = RecruitDeleteAction.getRecruitDeleteAction();
		RecruitListAction = RecruitListAction.getRecruitListAction();
		RecruitModifyAction = RecruitModifyAction.getRecruitModifyAction();
		RecruitComentAction = RecruitCommentAction.getRecruitCommentAction();
		RecruitViewAction = RecruitViewAction.getRecruitViewAction();
		RecruitWriteAction = RecruitWriteAction.getRecruitWriteAction();
		RecruitGetArticleAction = RecruitGetArticleAction.getRecruitCommentAction();
	}


	public static Action getRecruitGetArticleAction() {
		return RecruitGetArticleAction;
	}


	public static Action getRecruitDeleteAction() {
		return RecruitDeleteAction;
	}


	public static Action getRecruitListAction() {
		return RecruitListAction;
	}


	public static Action getRecruitModifyAction() {
		return RecruitModifyAction;
	}


	public static Action getRecruitComentAction() {
		return RecruitComentAction;
	}


	public static Action getRecruitViewAction() {
		return RecruitViewAction;
	}


	public static Action getRecruitWriteAction() {
		return RecruitWriteAction;
	}
	
	
	
}