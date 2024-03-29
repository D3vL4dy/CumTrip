package cumtrip.main.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import cumtrip.main.dao.IMemberDao;
import cumtrip.main.dao.MemberDaolmpl;
import cumtrip.vo.Lo_searchVO;
import cumtrip.vo.MattractVO;
import cumtrip.vo.MemberVO;
import cumtrip.vo.MiddleVO;
import cumtrip.vo.SubPrintVO;


//dao에 접근 - dao객체가 필요
//service객체 생성 리턴 - controller가 사용

public class MemberServicelmpl implements IMemberService {
	
	
	private IMemberDao dao;
	private static IMemberService service;
	
	private MemberServicelmpl() {
		dao = MemberDaolmpl.getInstance();
		
	}
	
	public static IMemberService getInstance() {
		if(service == null) service = new MemberServicelmpl();
		return service;
		
	}


	@Override
	public MemberVO Count(String id) {
		MemberVO vo = null;
		try {
			vo = dao.Count(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return vo;
	}
	

//	@Override
//	public List<ZipVo> search(String data) {
//		// TODO Auto-generated method stub
//		return dao.search(data);
//	}
	

	@Override
	public String insert(MemberVO vo) {
		String count = null;
		try {
			count = dao.insert(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}

	//로그인
	@Override
	public MemberVO getMember(MemberVO memVo) {
		MemberVO vo = null;
		
		try {
			vo = dao.getMember(memVo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return vo;
	}

	@Override
	public List<Lo_searchVO> getSido() {
		List<Lo_searchVO> vo = null;
		
		  try {
			vo= dao.getSido();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return vo;
	}

	
	//아이디찾기
	@Override
	public MemberVO idFind(MemberVO vo) {
		MemberVO volist = null;
		
		try {
			volist = dao.idFind(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return volist;
	}
	
	//패스워드 찾기
	@Override
	public MemberVO passFind(MemberVO vo) {
		MemberVO volist = null;
		
		try {
			volist = dao.passFind(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return volist;
	}

	//패스워드변경
	@Override
	public int PassSetFind(MemberVO vo) {
		int count = 0;
		
		try {
			count = dao.PassSetFind(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return count;
	}

	@Override
	public int updateMember_Mypage(MemberVO vo) {
		int count = 0;
		
		try {
			count = dao.updateMember_Mypage(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return count;
	}

	@Override
	public int deleteMember_Mypage(MemberVO vo) {
		int count = 0;
		
		try {
			count = dao.deleteMember_Mypage(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return count;
	}


	@Override
	public List<SubPrintVO> maintourlist() {
		 List<SubPrintVO> list = null;
		  
		 try {
			list=dao.maintourlist();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		return list;
	}

	@Override
	public List<SubPrintVO> maintourlist2() {
		 List<SubPrintVO> list = null;
		  
		 try {
			list=dao.maintourlist2();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		return list;
	}

	@Override
	public List<SubPrintVO> maintourlist3() {
		 List<SubPrintVO> list = null;
		  
		 try {
			list=dao.maintourlist3();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		return list;
	}


	@Override
	public List<MemberVO> likeMypage01( Map<String,String> id ) {
		List<MemberVO> volist = null;
		
		try {
			volist = dao.likeMypage01(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return volist;
	}

	@Override
	//찜풀기m
		public int likeMypagedelect( MemberVO vo ) {
		int volist = 0;
		
		try {
			volist = dao.likeMypagedelect(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return volist;
	}

	//찜풀기s
	@Override
	public int likeMypagedelect2(MemberVO vo) {
		int volist = 0;
		
		try {
			volist = dao.likeMypagedelect2(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return volist;
	}

	

	@Override
	public List<MemberVO> reviweMypage01(Map<String, String> id) {
		List<MemberVO> volist = null;
		
		try {
			volist = dao.reviweMypage01(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return volist;
	}

	@Override
	public List<SubPrintVO> mainrandomtourlist() {
		List<SubPrintVO> list = null;
		
		try {
			list= dao.mainrandomtourlist();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}


	@Override
	public List<MemberVO> payMypage01(String id) {
		List<MemberVO> volist = null;
		
		try {
			volist = dao.payMypage01(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return volist;
	}

	@Override
	public List<SubPrintVO> mainrectourlist() {
		List<SubPrintVO> list = null;
		
		try {
			list = dao.mainrectourlist();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public String mattractcheck(String id) {
	    String str = null;
	     
	    try {
			str = dao.mattractcheck(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
		return str;
	}

	@Override
	public int mattractinsert(MattractVO vo) {
		  int num=0;
		  try {
			num=dao.mattractinsert(vo);
		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  
		return num;
	}

	@Override
	public List<SubPrintVO> mainattrtourlist(String id) {
		List<SubPrintVO> list = null;
		
		try {
			list = dao.mainattrtourlist(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public List<MemberVO> likeMypage02(Map<String, String> id) {
		List<MemberVO> volist = null;
		
		try {
			volist = dao.likeMypage02(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return volist;
	}

	@Override
	public int likeMypageDelete03(MemberVO vo) {
		int count = 0;
		
		try {
			count = dao.likeMypageDelete03(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return count;
	}

	@Override
	public int likeMypageDelete04(MemberVO vo) {
		int count = 0;
		
		try {
			count = dao.likeMypageDelete04(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return count;
	}

	@Override
	public Object mypage_payUdate01(String cart) {
		Object count = null;
		
		try {
			count = dao.mypage_payUdate01(cart);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return count;
	}

	@Override
	public int mypage_payUdate02(String cart) {
		int count = 0;
		
		try {
			count = dao.mypage_payUdate02(cart);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return count;
	}

	@Override
	public List<MemberVO> taste_select(String id) {
		List<MemberVO> volist = null;
		
		try {
			volist = dao.taste_select(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return volist;
	}

	@Override
	public int taste_update(MemberVO vo) {
		int count = 0;
		
		try {
			count = dao.taste_update(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return count;
	}

	@Override
	public Object taste_insert(MemberVO vo) {
		Object count = null;
		
		try {
			count = dao.taste_insert(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return count;
	}

	@Override
	public int taste_delect(String id) {
		int count = 0;
		
		try {
			count = dao.taste_delect(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return count;
	}

	

	
	
}
