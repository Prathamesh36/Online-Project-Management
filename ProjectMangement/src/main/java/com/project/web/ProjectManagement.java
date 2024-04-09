package com.project.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
//@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class })
@SpringBootApplication
public class ProjectManagement {

	public static void main(String[] args) {
		SpringApplication.run(ProjectManagement.class, args);
	}

}
