package com.o_rai.service;

import java.io.FileInputStream;
import java.util.Arrays;
import java.util.List;

import javax.inject.Inject;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
import com.o_rai.domain.ReservationVO;
import com.o_rai.model.ReservationDAO;

@EnableScheduling
@Service
public class FcmService {
	
	private static final Logger logger = LoggerFactory.getLogger(FcmService.class);
	
	@Inject
	private ReservationDAO reservDao;
	
	// Extract Method to Service Package
	@Scheduled(cron="0 0,15,30,45 * * * *")
	public @ResponseBody List<ReservationVO> fcmScheduler() {

		logger.info("Gatcha(scheduleTest)");

		List<ReservationVO> listReservVO = reservDao.fcmRequest();

		System.out.println(listReservVO.size());

		for(int i = 0; i < listReservVO.size(); i++) {
			if(listReservVO.get(i).getUser_token() != null) {
				try {
					fcmScheduleTest(listReservVO.get(i).getUser_token(), listReservVO.get(i).getUsing_count(), listReservVO.get(i).getTotal_count());
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return listReservVO;
	}
	
	public void fcmScheduleTest(String token, int using_count, int total_count) throws Exception {
		logger.info("fcmTest running");
		try {    
			logger.info("fcmTest-try running");    
			String path = "C:/Users/koseongmin/Documents/GitHub/o_rai/src/main/webapp/resources/google/fcmpushapp-2df0f-firebase-adminsdk-upb2t-1410edf9f7.json";
			String MESSAGING_SCOPE = "https://www.googleapis.com/auth/firebase.messaging";
			String[] SCOPES = { MESSAGING_SCOPE };

			GoogleCredential googleCredential = GoogleCredential
					.fromStream(new FileInputStream(path))
					.createScoped(Arrays.asList(SCOPES));
			
			googleCredential.refreshToken();
			logger.info("fcmTest-try-refreshToken running");
			
			HttpHeaders headers = new HttpHeaders();
			headers.add("content-type" , MediaType.APPLICATION_JSON_VALUE);
			headers.add("Authorization", "Bearer " + googleCredential.getAccessToken());

			JSONObject notification = new JSONObject();
			notification.put("using_count", Integer.toString(using_count));
			notification.put("total_count", Integer.toString(total_count));
			notification.put("title", "TITLE");

			JSONObject message = new JSONObject();
			message.put("token", token);
			message.put("data", notification);

			JSONObject jsonParams = new JSONObject();
			jsonParams.put("message", message);
			logger.info("fcmTest-try-jsonParams running");
			HttpEntity httpEntity = new HttpEntity(jsonParams.toJSONString(), headers);
			RestTemplate rt = new RestTemplate();            
			logger.info("fcmTest-try-restTemplate running");

			ResponseEntity<String> res = rt.exchange("https://fcm.googleapis.com/v1/projects/fcmpushapp-2df0f/messages:send"      //이 부분 오류남
					, HttpMethod.POST
					, httpEntity
					, String.class);
			logger.info("fcmTest-try-restponseEntity running");
			if (res.getStatusCode() != HttpStatus.OK) {

				logger.info("FCM-Exception");
				logger.info(res.getStatusCode().toString());
				logger.info(res.getHeaders().toString());
				logger.info(res.getBody().toString());

			} else {
				logger.info(res.getStatusCode().toString());
				logger.info(res.getHeaders().toString());
				logger.info(res.getBody().toLowerCase());

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
