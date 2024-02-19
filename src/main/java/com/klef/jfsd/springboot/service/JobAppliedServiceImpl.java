package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.JobApplied;
import com.klef.jfsd.springboot.repository.JobAppliedRepository;

@Service
public class JobAppliedServiceImpl implements JobAppliedService {

    @Autowired
    private JobAppliedRepository jobAppliedRepository;

    @Override
    public JobApplied getJobAppliedById(Integer jobAppliedId) {
        return jobAppliedRepository.findById(jobAppliedId).orElse(null);
    }

    @Override
    public List<JobApplied> getJobAppliedByJobId(Integer jobId) {
        return jobAppliedRepository.findByJobId(jobId);
    }

    @Override
    public List<JobApplied> getJobAppliedByCompanyId(Integer companyId) {
        return jobAppliedRepository.findByCompanyId(companyId);
    }

    @Override
    public void saveJobApplied(JobApplied jobApplied) {
        jobAppliedRepository.save(jobApplied);
    }
}
