package com.o_rai.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.o_rai.domain.ApartmentVO;
import com.o_rai.domain.PagingVO;

@Repository
public class ApartmentDAOImpl implements ApartmentDAO {

	@Autowired
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
	public List<ApartmentVO> loginApartment(Map<String, Object> map) {
		// TODO Auto-generated method stub
		
		return sqlSession.selectList(namespace+".loginApartment", map);
	}

	@Override
	public List<Map<String, Object>> selectBoardList(PagingVO vo) {
		// TODO Auto-generated method stub
			
		return sqlSession.selectList(namespace+".selectBoardList", vo);
	}

	@Override
	public PagingVO selectPagingInfo(int apt_index) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".selectPagingInfo", apt_index);
	}

	@Override
	public int addCurrentDate(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace+".addCurrentDate", map);
	}

	@Override
	public Map<String, Object> selectCurrentDate(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".selectCurrentDate", map);
	}

	@Override
	public Map<String, Object> selectAptInform(Integer apt_index) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".selectAptInform", apt_index);
	}

	@Override
	public Map<String, Object> selectUserInform(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".selectUserInform", map);
	}

	@Override
	public Integer addBlackList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		System.out.println("AparmentDAOImpl : " + map);
		return sqlSession.selectOne(namespace+".addBlackList", map);
	}

	@Override
	public Map<String, Object> selectBlackListPossibleChk(String param) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".selectBlackListPossibleChk", param);
	}

	@Override
	public Integer addIsReported(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".addIsReported", map);
	}

	@Override
	public int updateApartment(ApartmentVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace+".updateApartment",vo);
	}
	
}
