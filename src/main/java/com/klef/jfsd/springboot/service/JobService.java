package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Job;

public interface JobService {
    Job getJobById(Integer jobId);
    void saveJob(Job job);
    void updateJob(Job job);
    void deleteJob(Job job);
    void deleteJobadmin(Job job);
    List<Job> getAllJobs();
	
}
