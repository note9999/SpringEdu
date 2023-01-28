package kr.board.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.Member;

@Mapper // Mybatis API
public interface MemberMapper {
		
	public Member registerCheck(String memID);

}
