package com.project.web.Model;

import java.time.LocalDate;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Project {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer projectId;
	private String projectName;
	
	private String reason;
	private String type;
	private String division;
	
	private String category;
	private String priority;
	private String department;
	
	private LocalDate startDate;
	private LocalDate endDate;
	
	private String location;
	
	private String status = "Registered";
	public Project() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Project(Integer projectId, String projectName, String reason, String type, String division, String category,
			String priority, String department, LocalDate startDate, LocalDate endDate, String location,
			String status) {
		super();
		this.projectId = projectId;
		this.projectName = projectName;
		this.reason = reason;
		this.type = type;
		this.division = division;
		this.category = category;
		this.priority = priority;
		this.department = department;
		this.startDate = startDate;
		this.endDate = endDate;
		this.location = location;
		this.status = status;
	}

	public Integer getProjectId() {
		return projectId;
	}
	public void setProjectId(Integer projectId) {
		this.projectId = projectId;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority = priority;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public LocalDate getStartDate() {
		return startDate;
	}
	public void setStartDate(LocalDate startDate) {
		this.startDate = startDate;
	}
	public LocalDate getEndDate() {
		return endDate;
	}
	public void setEndDate(LocalDate endDate) {
		this.endDate = endDate;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Project [projectId=" + projectId + ", projectName=" + projectName + ", reason=" + reason + ", type="
				+ type + ", division=" + division + ", category=" + category + ", priority=" + priority
				+ ", department=" + department + ", startDate=" + startDate + ", endDate=" + endDate + ", location="
				+ location + "]";
	}
	
	
	
}

