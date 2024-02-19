package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Job;
import com.klef.jfsd.springboot.repository.JobRepository;

@Service
public class JobServiceImpl implements JobService {

    @Autowired
    private JobRepository jobRepository;

    @Override
    public Job getJobById(Integer jobId) {
        return jobRepository.findById(jobId).orElse(null);
    }

    @Override
    public void saveJob(Job job) {
        jobRepository.save(job);
    }

    @Override
    public void updateJob(Job job) {
        jobRepository.save(job);
    }

    @Override
    public void deleteJob(Job job) {
        jobRepository.delete(job);
    }



    @Override
    public List<Job> getAllJobs() {
        return jobRepository.findAll();
    }

	@Override
	public void deleteJobadmin(Job job) {
		jobRepository.delete(job);
		
	}
}


