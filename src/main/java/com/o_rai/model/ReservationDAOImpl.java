package com.o_rai.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.o_rai.domain.ReservationVO;

@Repository
public class ReservationDAOImpl implements ReservationDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.o_rai.mapper.ReservationMapper";
	
	@Override
	public void insertReservation(ReservationVO vo) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+".insertReservation", vo);
	}
	
	@Override
	public List<ReservationVO> getBookedCount(ReservationVO vo){
		// TODO Auto-generated method stub
		List<ReservationVO> output = sqlSession.selectList(namespace+".getBookedCount", vo);
		return output;
	}

	@Override
	public List<ReservationVO> getReservationList(ReservationVO vo){
		// TODO Auto-generated method stub
		List<ReservationVO> output = sqlSession.selectList(namespace+".getReservationList", vo);
		return output;
	}

	@Override
	public void modifyReservation(ReservationVO vo) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+".modifyReservation", vo);
	}

	@Override
	public void disableReservation(ReservationVO vo) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+".disableReservation", vo);
	}

	@Override
	public List<ReservationVO> fcmRequest() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".fcmRequest");
	}
	
	
	
}
