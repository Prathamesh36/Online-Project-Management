package com.project.web.Repository;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.project.web.Model.Project;

public interface ProjectRepository extends JpaRepository<Project, Integer>{
	
	public long countByStatus(String status);
	
	long countByStatusAndEndDateLessThan(String status, LocalDate endDate);
	
	long countByDepartment(String department);
	
	long countByStatusAndDepartment(String status, String department);
	
	 @Query("SELECT p FROM Project p WHERE " +
	            "LOWER(p.projectName) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
	            "LOWER(p.reason) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
	            "LOWER(p.type) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
	            "LOWER(p.division) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
	            "LOWER(p.category) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
	            "LOWER(p.priority) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
	            "LOWER(p.department) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
	            "LOWER(p.location) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
	            "LOWER(p.status) LIKE LOWER(CONCAT('%', :keyword, '%'))")
	 List<Project> searchProjectsByKeyword(String keyword);
	 
	 List<Project> findAll(Sort sort);
}
