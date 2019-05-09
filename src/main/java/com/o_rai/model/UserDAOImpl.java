package com.o_rai.model;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.o_rai.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO{

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.o_rai.mapper.UserMapper";
	
	@Override
	public void join(UserVO vo){
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+".insertUser", vo);
	}

	@Override
	public void disableUser(UserVO vo) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+".disableUser", vo);
	}

	@Override
	public UserVO getLoginUser(UserVO vo) throws Exception{
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".getLoginUser", vo);
	}

	@Override
	public void modifyUser(UserVO vo) {
		// TODO Auto-generated method stub
		System.out.println(vo.toString());
		sqlSession.insert(namespace+".modifyUser", vo);
	}

	@Override
	public void updateToken(UserVO vo) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+".updateToken", vo);
	}

	@Override
	public void logoutUser(UserVO vo) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+".logoutUser", vo);
	}
}
