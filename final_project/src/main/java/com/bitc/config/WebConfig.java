package com.bitc.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {

		// /resources/img/profile/** 경로로 요청이 들어오면 D:/profileImage/ 폴더에서 파일을 찾음
		registry.addResourceHandler("/resources/img/profile/**").addResourceLocations("file:///D:/profileImage/");
	}
}
