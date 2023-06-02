package com.acorn.apex.tmp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TmpDAO {
	
	@Autowired
	DataSource ds;
	
	//글 목록 조회
	public ArrayList<BoardDTO> selectList() {
		ArrayList<BoardDTO> list=new ArrayList<>();
		try {
			Connection con=ds.getConnection();
			String sql="select b_id,u_id,b_title from board_tmp_230601";
			PreparedStatement pst=con.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				list.add(new BoardDTO(rs.getString(1), rs.getString(2), rs.getString(3)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	//글 조회
	public BoardDTO selectboard(String b_id){
		BoardDTO board=new BoardDTO();
		try {
			Connection con=ds.getConnection();
			String sql="select b.b_id,b.u_id,b.b_title,b.b_con,count(r.u_id) ";
					sql+="from board_tmp_230601 b left outer join recommend_tmp_230601 r ";
					sql+="on b.b_id=r.b_id where b.b_id=? ";
					sql+="group by b.b_id,b.u_id,b.b_title,b.b_con";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, b_id);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				board.setB_id(rs.getString(1));
				board.setU_id(rs.getString(2));
				board.setB_title(rs.getString(3));
				board.setB_con(rs.getString(4));
				board.setR_cnt(rs.getString(5));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return board;
	}
	
	//댓글 조회
	public ArrayList<CommentDTO> selectcomment(String b_id){
		ArrayList<CommentDTO> colist=new ArrayList<CommentDTO>();
		try {
			Connection con=ds.getConnection();
			String sql="select c_id,c_con,u_id,b_id from comment_tmp_230601 where b_id=?";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, b_id);
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				colist.add(new CommentDTO(rs.getString(1), rs.getString(2), rs.getString(3),rs.getString(4)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return colist;
	}
	
	//추천중복 체크
	public boolean checkreco(String b_id,String u_id) {
		boolean check=true;
		try {
			Connection con=ds.getConnection();
			String sql="select u_id from recommend_tmp_230601 where u_id=? and b_id=?";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, u_id);
			pst.setString(2, b_id);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				check=false;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return check;
	}
	
	//추천
	public void insertrecommend(String b_id,String u_id){

		try {
			Connection con=ds.getConnection();
			String sql="insert into recommend_tmp_230601 values(?,?)";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, u_id);
			pst.setString(2, b_id);
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//댓글작성
	public void insertcomment(String c_con,String u_id,String b_id){
		
		try {
			Connection con=ds.getConnection();
			String sql="insert into comment_tmp_230601 values('c' || TO_CHAR(comment_seq_tmp.NEXTVAL, 'FM000'),?,?,?)";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, c_con);
			pst.setString(2, u_id);
			pst.setString(3, b_id);
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//댓글삭제
	public void delcomment(String c_id){
		try {
			Connection con=ds.getConnection();
			String sql="delete from comment_tmp_230601 where c_id=?";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, c_id);
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	//추천수 조회
	public String selectr_cnt(String b_id){
		String r_cnt=null;
		try {
			Connection con=ds.getConnection();
			String sql="select count(b_id) from recommend_tmp_230601 where b_id=?";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, b_id);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				r_cnt=rs.getString(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return r_cnt;
	}
	
}
