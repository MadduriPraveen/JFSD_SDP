package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.JobApplied;

public interface JobAppliedService {
    JobApplied getJobAppliedById(Integer jobAppliedId);
    List<JobApplied> getJobAppliedByJobId(Integer jobId);
    List<JobApplied> getJobAppliedByCompanyId(Integer companyId);
    void saveJobApplied(JobApplied jobApplied);
}
