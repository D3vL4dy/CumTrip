package cumtrip.main.dao;

import java.sql.SQLException;
import java.util.List;

import cumtrip.vo.Lo_searchVO;
import cumtrip.vo.MemberVO;


public interface IMemberDao {


	
	//중복검사 메서드
	public List<MemberVO> Count( String id )throws SQLException;
	
	
	//저장하기
	public String insert( MemberVO vo )throws SQLException;
	
	
	//로그인
	public List<MemberVO> getMember(MemberVO memVo)throws SQLException;
	
	//검색시 시도 나오는 메서드
	public List<Lo_searchVO> getSido(Lo_searchVO sidoVo) throws SQLException;
	
	
}