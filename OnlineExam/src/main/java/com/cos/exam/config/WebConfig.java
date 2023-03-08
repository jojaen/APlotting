package com.cos.exam.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer{
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		String osName = System.getProperty("os.name");
		String userName = System.getProperty("user.name");
		if (osName.contains("Windows")) {
			registry.addResourceHandler("/upload/**").addResourceLocations("file:///C:/Users/"+ userName +"/images/image/");
		}
	}
}
