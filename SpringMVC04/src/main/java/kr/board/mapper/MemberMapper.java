package kr.board.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.Member;

@Mapper // Mybatis API
public interface MemberMapper {
		
	public Member registerCheck(String memID);
	public int register(Member m); // 회원등록(성공하면 1, 실패하면 0)
	public Member memLogin(Member mvo); // 로그인체크 
	public int memUpdate(Member mvo);  // 수정하기 처리 
	public Member getMember(String memID);
	public void memProfileUpdate(Member mvo);
}
