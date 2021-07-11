package com.gb.trip.controller.ajax;

import java.sql.Date;
import java.text.SimpleDateFormat;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.gb.trip.config.MyUserDetails;
import com.gb.trip.dto.ResponseDto;
import com.gb.trip.model.Prefer;

@RequestMapping("/user")
@RestController
public class PreferAjaxController {
	
	@PostMapping("/prefer")
	public ResponseDto<Integer> save(@RequestBody Prefer prefer,
			@AuthenticationPrincipal MyUserDetails myUserDetails){
		prefer.setUser(myUserDetails.getUser());
		System.out.println(prefer);
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}

}
