package com.o_rai.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.o_rai.domain.ApartmentVO;
import com.o_rai.domain.RequestResult;
import com.o_rai.domain.ReservationVO;
import com.o_rai.domain.UserVO;
import com.o_rai.model.ApartmentDAO;
import com.o_rai.model.ReservationDAO;
import com.o_rai.model.UserDAO;

@Controller
@RequestMapping("/android/")
public class AndroidController {

	private static final Logger logger = LoggerFactory.getLogger(AndroidController.class);
	
	@Inject
	private ApartmentDAO aptDao;
	
	@Inject
	private UserDAO userDao;
		
	@Inject
	private ReservationDAO reservDao;
	
	// GET ---------------------------------------------------------------------
	// get all list of apartment to show on map
	@RequestMapping("getAllApartment")
	public @ResponseBody List<ApartmentVO> getAllApartment() {
		
		logger.info("Gatcha!(getAllApartment)");
		
		List<ApartmentVO> listVO = null;
		
		try {
			
			listVO = aptDao.getAllApartment();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		logger.info("Sending...(getAllApartment)");
		
		return listVO;
	}
	
	
	// POST -----------------------------------------------------------------
	// insert user
	@RequestMapping(value="join", method=RequestMethod.POST)
	public @ResponseBody RequestResult join(@RequestBody UserVO vo) {
		RequestResult requestResult = new RequestResult();
		
		try {
			
			logger.info("Gatcha!(join)");
			
			userDao.join(vo);
			
			logger.info("Requesting DB...");
			
		}catch (Exception e) {
			
			e.printStackTrace();
			logger.info("DB connection Error...");
			
			requestResult.setResult(false);
			return requestResult;
		}
		
		logger.info("Success!(join)");
		
		requestResult.setResult(true);
		return requestResult;
	}
	
	// insert reservation
	@RequestMapping(value = "postReservation", method=RequestMethod.POST)
	public @ResponseBody RequestResult postReservation(@RequestBody ReservationVO vo) {
		
		logger.info("Gatcha!(postReservation)");
		
		RequestResult requestResult = new RequestResult();
		
		try {
			
			String date = vo.getStart_time();
			System.out.println(date);
			
			reservDao.insertReservation(vo);

			logger.info("Requesting DB...(postReservation)");
			
		} catch (Exception e){
			
			e.printStackTrace();
			logger.info("DB connection Error...(postReservation)");
			
			requestResult.setResult(false);
			return requestResult;
		}
		
		logger.info("Success!(postReservation");
		
		requestResult.setResult(true);
		return requestResult;
	}
	
	// PUT ------------------------------------------------------------------------
	// modify info of user or get data secretly
	// when user_grade become 2 = (black_list)
	@RequestMapping(value = "modifyUser", method=RequestMethod.PUT)
	public @ResponseBody RequestResult modifyUser(@RequestBody UserVO vo) {
		
		logger.info("Gatcha!(modifyUser)");
		
		RequestResult requestResult= new RequestResult();
		
		try {
			
			userDao.modifyUser(vo);
			
			logger.info("Requesting DB...(modifyUser)");
			
		}catch (Exception e) {
			e.printStackTrace();
			logger.info("DB Connection Error...(modifyUser)");
			
			requestResult.setResult(false);
			return requestResult;
		}
		
		logger.info("Success!(modifyUser)");
		
		requestResult.setResult(true);
		return requestResult;
	}
	
	@RequestMapping(value = "modifyReservation", method=RequestMethod.PUT)
	public @ResponseBody RequestResult modifyReservation (@RequestBody ReservationVO vo) {
		
		logger.info("Gatcha!(modifyReservation)");
		
		RequestResult requestResult = new RequestResult();
		
		try {
			
			System.out.println("vo book_index:"+ vo.getBook_index());
			System.out.println("vo start_time:"+ vo.getStart_time());
			
			reservDao.modifyReservation(vo);
			
			logger.info("Requesting DB...(modifyReservation)");
			
		} catch (Exception e) {
			e.printStackTrace();
			logger.info("DB Connection Error...(modifyReservation)");
			
			requestResult.setResult(false);
			return requestResult;
		}
		
		logger.info("Success!(modifyReservation");
		
		requestResult.setResult(true);
		return requestResult;
	}
	
	// delete reservation (Success : true, Fail : false)
	@RequestMapping(value = "deleteReservation", method=RequestMethod.PUT)
	public @ResponseBody RequestResult disableReservation (@RequestBody ReservationVO vo) {
		
		logger.info("Gatcha!(deleteReservation)");
		
		RequestResult requestResult = new RequestResult();
		
		try {
			
			reservDao.disableReservation(vo);
			
			logger.info("Requesting DB...(deleteReservation)");
			
		} catch( Exception e ) {
			e.printStackTrace();
			logger.info("DB Connection Error...(deleteReservation");
			
			requestResult.setResult(false);
			return requestResult;
		}
		
		logger.info("Success!(deleteReservation)");
		
		requestResult.setResult(true);
		return requestResult;
	}
	
	// modify user's user_grade column to 0 (false)
	@RequestMapping(value = "disableUser", method=RequestMethod.PUT)
	public @ResponseBody RequestResult deleteUser(@RequestBody UserVO vo) {
		RequestResult requestResult = new RequestResult();
		
		try {
			logger.info("Gatcha!(disableUser)");
			
			vo.setUser_token(null);
			userDao.disableUser(vo);
			
			logger.info("Requesting DB...(disableUser)");
		}catch(Exception e) {
			
			e.printStackTrace();
			logger.info("DB connection Error...");
			
			requestResult.setResult(false);
			return requestResult;
		}
		
		logger.info("Success!(disableUser)");
		
		requestResult.setResult(true);
		return requestResult;
	}
	
	// logout user and update token to null
	@RequestMapping(value = "logoutUser", method=RequestMethod.PUT)
	public @ResponseBody RequestResult logoutUser(@RequestBody UserVO vo) {
		
		RequestResult requestResult = new RequestResult();
		
		logger.info("Gatcha!(logoutUser)");
		
		vo.setUser_token(null);
		
		userDao.logoutUser(vo);
		
		requestResult.setResult(true);
		
		logger.info("Success!(logoutUser)");
		
		return requestResult;
	}
	
	// search specific apartment with apt_name
	@RequestMapping(value="getSearchedApartment", method=RequestMethod.PUT)
	public @ResponseBody List<ApartmentVO> getSearchedApartment(@RequestBody ApartmentVO vo) {

		System.out.println("received apartment name:" + vo.getApt_name());
		
		logger.info("Gatcha!(getSearchedApartment)");

		List<ApartmentVO> listAptVO = aptDao.getSearchedApartment(vo);

		logger.info("Sending...(getSearchedApartment)");

		return listAptVO;
	}

	// get selected apartment's information
	@RequestMapping(value="getSelectedApartment", method=RequestMethod.PUT)
	public @ResponseBody ApartmentVO getSelectedApartment(@RequestBody ApartmentVO vo) {

		logger.info("Gatcha!(getSelectedApartment)");


		ApartmentVO AptVO = aptDao.getSelectedApartment(vo);

		logger.info("Sending...(getSelectedApartment)");

		return AptVO;
	}

	// get user info with user_id
	@RequestMapping(value="getLoginUser", method=RequestMethod.PUT)
	public @ResponseBody UserVO getLoginUser(@RequestBody UserVO vo) {

		logger.info("Gatcha!(getLoginUser)");

		UserVO innerVO = new UserVO();

		try {
			
			innerVO = userDao.getLoginUser(vo);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		if(innerVO == null) {
			
			// CHECK!! return null vo?
			return innerVO;
			
		} else {
			
			logger.info(vo.getUser_token());
			
			userDao.updateToken(vo);
			
			logger.info(vo.toString());
			
			return innerVO;
		}
	}

	// get reservation list with time and apt_index
	@RequestMapping(value="getBookedCount", method=RequestMethod.PUT)
	public @ResponseBody List<ReservationVO> getBookedCount(@RequestBody ReservationVO vo) {

		logger.info("Gatcha(getBookedCount)");

		System.out.println("Client user_index : " + vo.getUser_index());
		System.out.println(vo.toString());

		List<ReservationVO> listReservVO = reservDao.getBookedCount(vo);

		logger.info("Sending...(getBookedCount)");

		return listReservVO;
	}

	// get reservation list with user_index
	@RequestMapping(value="getReservationList", method=RequestMethod.PUT)
	public @ResponseBody List<ReservationVO> getReservationList(@RequestBody ReservationVO vo) {

		System.out.println("user_index:" + vo.getUser_index());

		logger.info("Gatcha(getReservationList)");

		List<ReservationVO> listReservVO = reservDao.getReservationList(vo);

		logger.info("Sending...(getReservationList)");

		System.out.println(listReservVO.size());
		
		if(listReservVO.size() > 0) {
			
			System.out.println(listReservVO.get(0).getStart_time());
		}
		
		return listReservVO;
	}

	
}
