package com.project.web.Controller;

import java.awt.print.Pageable;
import java.security.Principal;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.Flow.Publisher;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.web.Model.Project;
import com.project.web.Model.User;
import com.project.web.Repository.ProjectRepository;
import com.project.web.Service.ProjectService;

import jakarta.servlet.http.HttpSession;

@Controller
public class ProjectController {

	@Autowired
	private ProjectRepository projectRepository;
	
	@Autowired
	private ProjectService projectService;

	@RequestMapping("/")
	public String home() {
		return "login";
	}

	
	@RequestMapping("/infoAdded")
	public String addInfo(@ModelAttribute Project project) {

		projectRepository.save(project);

		return "redirect:/get";

	}

	@RequestMapping("/get")
	public String getData(Model m) {
		List<Project> al = projectRepository.findAll();
		m.addAttribute("e_data", al);

		return "redirect:/projectListing";
	}
	
	@RequestMapping("/createProjectForm")
	public String login() {

			return "createProjectForm";	
	}
	

	@RequestMapping("/start/{id}")
	public String startStatus(@PathVariable Integer id) {
		Project project = projectRepository.findById(id).orElse(null);
		if (project != null) {
			project.setStatus("Running");

			projectRepository.save(project);

		}
		return "redirect:/get";
	}

	@RequestMapping("/close/{id}")
	public String closeStatus(@PathVariable int id) {
		Project project = projectRepository.findById(id).orElse(null);
		if (project != null) {
			project.setStatus("Closed");

			projectRepository.save(project);

		}
		return "redirect:/get";
	}

	@RequestMapping("/cancel/{id}")
	public String cancelStatus(@PathVariable int id) {
		Project project = projectRepository.findById(id).orElse(null);
		if (project != null) {
			project.setStatus("Cancelled");

			projectRepository.save(project);
			System.out.println(project.toString());
		}
		return "redirect:/get";
	}

	
	@RequestMapping("/dashboard")
	public String totalProjects(Model model) {
		
		Long projectCount = projectRepository.count();
		model.addAttribute("projectCount", projectCount);
		
		Long closedprojects = projectRepository.countByStatus("Closed");
		model.addAttribute("closedprojects", closedprojects);
		
		Long runningprojects = projectRepository.countByStatus("Running");
		model.addAttribute("runningprojects", runningprojects);
		
		LocalDate today = LocalDate.now();
		Long runningBeforeToday = projectRepository.countByStatusAndEndDateLessThan("Running", today);
		model.addAttribute("runningBeforeToday", runningBeforeToday);
		
		Long cancelledprojects = projectRepository.countByStatus("Cancelled");
		model.addAttribute("cancelledprojects", cancelledprojects);
		
		List<Long> totalProjects = new ArrayList<>();
		totalProjects.add(projectRepository.countByDepartment("Strategy"));
		totalProjects.add(projectRepository.countByDepartment("Finance"));
		totalProjects.add(projectRepository.countByDepartment("Quality"));
		totalProjects.add(projectRepository.countByDepartment("Maintenance"));
		totalProjects.add(projectRepository.countByDepartment("Stores"));
		totalProjects.add(projectRepository.countByDepartment("HR"));

		model.addAttribute("totalProjects", totalProjects);
		
		
		List<Long> totalCloseProjects = new ArrayList<>();
		totalCloseProjects.add(projectRepository.countByStatusAndDepartment("Closed","Strategy"));
		totalCloseProjects.add(projectRepository.countByStatusAndDepartment("Closed","Finance"));
		totalCloseProjects.add(projectRepository.countByStatusAndDepartment("Closed","Quality"));
		totalCloseProjects.add(projectRepository.countByStatusAndDepartment("Closed","Maintenance"));
		totalCloseProjects.add(projectRepository.countByStatusAndDepartment("Closed","Stores"));
		totalCloseProjects.add(projectRepository.countByStatusAndDepartment("Closed","HR"));
		
		model.addAttribute("totalCloseProjects", totalCloseProjects);
		
		return "dashboard";
				
	}
	
	@GetMapping("/projectListingSearch")
	public String searchProjects(@RequestParam(required = false) String keyword, Model model){
		
		if(keyword == null || keyword.isEmpty()) {
			
			return "redirect:/get";
		}
		else {
			List<Project> searchProject = projectRepository.searchProjectsByKeyword(keyword);
			System.out.println(searchProject.toString());
			model.addAttribute("searchProject", searchProject);
		}	

		return "searchProject" ;
	}
	
	@GetMapping("/projectListing")
	public String getAllProjects(@RequestParam(defaultValue = "0") int pageNo, @RequestParam(defaultValue = "10") int pageSize, Model model){
		
		 Page<Project> page = projectService.getAllProjects(pageNo, pageSize);
	
	     model.addAttribute("projects", page.getContent());
	     model.addAttribute("totalPages", page.getTotalPages());
	     model.addAttribute("currentPage", pageNo);
	     return "projectListing";
	}
	
	@GetMapping("/sort")
	public String sortProjects(@RequestParam String sortBy, Model model) {
		
		 List<Project> sortedProjects = projectRepository.findAll(Sort.by(sortBy));   
		 model.addAttribute("projects", sortedProjects);
		 return "projectListing"; 
	}
	
	
}
