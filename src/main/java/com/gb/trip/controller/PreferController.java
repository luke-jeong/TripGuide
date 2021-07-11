package com.gb.trip.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.gb.trip.model.Prefer;

@RestController
public class PreferController {
	
	@PostMapping(value = "/prefer",  headers = { "Content-type=application/json" })
	@ResponseBody
	public Map<String,Object> insertTour(@RequestBody Prefer sch) {
		if (sch != null) {
			
		}
		Map<String,Object> result = new HashMap<String,Object>();
		result.put("result", Boolean.TRUE);
		return result;
	}
}
