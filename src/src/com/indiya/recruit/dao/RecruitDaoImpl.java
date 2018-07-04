package com.indiya.recruit.dao;

import java.sql.*;
import java.util.*;

import com.indiya.recruit.model.CommentDto;
import com.indiya.recruit.model.RecruitDto;
import com.indiya.util.db.DBClose;
import com.indiya.util.db.DBConnection;

public class RecruitDaoImpl implements RecruitDao {

	private static RecruitDao RecruitDao;
	
	static {
		RecruitDao = new RecruitDaoImpl();
	}
	
	private RecruitDaoImpl() {}
	
	public static RecruitDao getRecruitDao() {
		return RecruitDao;
	}
	
	@Override
	public int writeArticle(RecruitDto recruitdto) {
		int no = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("insert into board (no, member_id, title, contents, visited, write_date) \n");
			sql.append("	   values (?, ?, ?, ?, 0, sysdate)");
			System.out.println(sql);
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0;
			pstmt.setInt(++idx, recruitdto.getNo());
			pstmt.setString(++idx, recruitdto.getMember_id());
			pstmt.setString(++idx, recruitdto.getTitle());
			pstmt.setString(++idx, recruitdto.getContents());
			no = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
		return no;
	}

	@Override
	public List<RecruitDto> listArticle(Map<String, String> map) {
		List<RecruitDto> list = new ArrayList<RecruitDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select b.* \n");
			sql.append("from ( \n");
			sql.append("	select rownum rn, a.* \n");
			sql.append("	from ( \n");
			sql.append("		select no, member_id, title, contents, visited, \n");
			sql.append(" 				case  \n");
			sql.append("					when to_char(write_date, 'yymmdd') = to_char(sysdate, 'yymmdd') \n");
			sql.append("					then to_char(write_date, 'hh24:mi:ss') \n");
			sql.append("					else to_char(write_date, 'yy.mm.dd') \n");
			sql.append("				end write_date \n");
			sql.append("		from board \n");
			String key = map.get("key");
			String word = map.get("word");
			if(!key.isEmpty() && !word.isEmpty()) {
				if(key.equals("title")) {
					sql.append("		where title like '%'||?||'%' \n");
				} else {// seq, id
					sql.append("		where " + key + " = ? \n");
				}
			}
			sql.append("		order by no desc \n");
			sql.append("		) a \n");
			sql.append("	where rownum <= ? \n");
			sql.append("	) b \n");
			sql.append("where b.rn > ? \n");
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0;
			if(!key.isEmpty() && !word.isEmpty()) {
				pstmt.setString(++idx, word);
			}
			pstmt.setString(++idx, map.get("end"));
			pstmt.setString(++idx, map.get("start"));
			rs = pstmt.executeQuery();
			while(rs.next()) {
				RecruitDto recruitdto = new RecruitDto();
				recruitdto.setNo(rs.getInt("no"));
				recruitdto.setMember_id(rs.getString("member_id"));
				recruitdto.setTitle(rs.getString("title"));
				recruitdto.setContents(rs.getString("contents"));
				recruitdto.setVisited(rs.getInt("visited"));
				recruitdto.setWrite_date(rs.getString("write_date"));
				
				list.add(recruitdto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return list;
	}

	@Override
	public RecruitDto viewArticle(int no) {
		RecruitDto recruitdto = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select no, member_id, title, contents, visited, \n");
			sql.append("case \n");
			sql.append("when to_char(write_date, 'yymmdd') = to_char(sysdate, 'yymmdd')  \n");
			sql.append("then to_char(write_date, 'hh24:mi:ss')  \n");
			sql.append("else to_char(write_date, 'yy.mm.dd')  \n");
			sql.append("end write_date  \n");
			sql.append("from board \n");
			sql.append("where no = ? \n");

			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				recruitdto = new RecruitDto();
				recruitdto.setNo(rs.getInt("no"));
				recruitdto.setMember_id(rs.getString("member_id"));
				recruitdto.setTitle(rs.getString("title"));
				recruitdto.setContents(rs.getString("contents"));
				recruitdto.setVisited(rs.getInt("visited"));
				recruitdto.setWrite_date(rs.getString("write_date"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return recruitdto;
	}

	@Override
	public RecruitDto getArticle(int no) {
		RecruitDto recruitdto = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select no, member_id, title, contents, visited \n");
			sql.append("from board \n");
			sql.append("where no = ? \n");

			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				recruitdto = new RecruitDto();
				recruitdto.setNo(rs.getInt("no"));
				recruitdto.setMember_id(rs.getString("member_id"));
				recruitdto.setTitle(rs.getString("title"));
				recruitdto.setContents(rs.getString("contents"));
				recruitdto.setVisited(rs.getInt("visited"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return recruitdto;
	}

	@Override
	public void modifyArticle(RecruitDto recruitdto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("update board  \n");
			sql.append("set title = ?, contents = ? \n");
			sql.append("where no = ?");
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0;
			pstmt.setString(++idx, recruitdto.getTitle());
			pstmt.setString(++idx, recruitdto.getContents());
			pstmt.setInt(++idx, recruitdto.getNo());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
	}

	@Override
	public void deleteArticle(int no){
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBConnection.makeConnection();
			conn.setAutoCommit(false);
			StringBuffer sql = new StringBuffer();
			sql.append("delete from board \n");
			sql.append("where no = ?");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, no);
			pstmt.executeUpdate();
			pstmt.close();
			
			
			sql.setLength(0);
			sql.append("delete from board_comment \n");
			sql.append("where board_no = ?"	);
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, no);
			pstmt.executeUpdate();

		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			try {
				conn.setAutoCommit(true);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			DBClose.close(conn, pstmt);
		}
	}

	@Override
	public CommentDto writeComment(CommentDto commentdto) {
		// TODO Auto-generated method stub
		return commentdto;
	}

}
