package com.o_rai.model;

import com.o_rai.domain.UserVO;

public interface UserDAO {

	public void join(UserVO vo);
	
	public void disableUser(UserVO vo);
	
	public UserVO getLoginUser(UserVO vo) throws Exception;
	
	public void modifyUser(UserVO vo);
	
	public void updateToken(UserVO vo);
	
	public void logoutUser(UserVO vo);
}
