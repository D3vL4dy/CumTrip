package cumtrip.main.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import cumtrip.vo.BoardVo;

public interface IBoardDao {
	
	//리스트 출력
	public List<BoardVo> selectList( Map<String, Object> map) throws SQLException;
	
	//전체글 갯수 가져오기
	public int totalCount(Map<String, String> map) throws SQLException;
	
	//페이지 정보 구하기
	public Map<String, Object> getPageInfo(int page)throws SQLException;
	
	//글삭제
	public int deleteBorad(BoardVo vo)throws SQLException;
	
	//업데이트
	public int updateHit(BoardVo vo)throws SQLException;

	//1:1글쓰기
	public Object insertQnaMypage(BoardVo vo)throws SQLException;
	

}
