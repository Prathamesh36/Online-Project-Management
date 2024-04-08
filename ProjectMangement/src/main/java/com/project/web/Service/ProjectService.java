package com.project.web.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.project.web.Model.Project;
import com.project.web.Repository.ProjectRepository;

@Service
public class ProjectService {
	 @Autowired
	    private ProjectRepository projectRepository;

	    public Page<Project> getAllProjects(int pageNo, int pageSize) {
	        Pageable pageable = PageRequest.of(pageNo, pageSize);
	        return projectRepository.findAll(pageable);
	    }
}
