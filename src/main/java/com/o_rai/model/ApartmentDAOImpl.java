package com.o_rai.model;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.o_rai.domain.ApartmentVO;

@Repository
public class ApartmentDAOImpl implements ApartmentDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.o_rai.mapper.ApartmentMapper";

	@Override
	public List<ApartmentVO> getAllApartment() throws Exception {
		// TODO Auto-generated method stub
		List<ApartmentVO> output = sqlSession.selectList(namespace+".getAllApartment");
		return output;
	}

	@Override
	public List<ApartmentVO> getSearchedApartment(ApartmentVO vo){
		// TODO Auto-generated method stub
		List<ApartmentVO> output = sqlSession.selectList(namespace+".getSearchedApartment", vo);
		return output;
	}

	@Override
	public ApartmentVO getSelectedApartment(ApartmentVO vo){
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".getSelectedApartment", vo);
	}
	
	// Web query
	
	// find Email of Apartment User
	@Override
	public List<ApartmentVO> overlayEmailChk(String email){
		
		return sqlSession.selectList(namespace+".emailOverlayChk", email);
	}

	// insert Apartment into table
	@Override
	public int insertApartment(ApartmentVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.insert(namespace+".insertApartment", vo);
	}

	@Override
	public boolean loginApartment(ApartmentVO vo) {
		// TODO Auto-generated method stub
		String searchedPwd = sqlSession.selectOne(namespace+".loginApartment");
		
		if(vo.getApt_password() == searchedPwd) {
			return true;
		} else {
			return false;
		}
	}
}
