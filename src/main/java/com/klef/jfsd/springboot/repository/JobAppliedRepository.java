package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.klef.jfsd.springboot.model.JobApplied;

public interface JobAppliedRepository extends JpaRepository<JobApplied, Integer> {
    List<JobApplied> findByJobId(Integer jobId);
    List<JobApplied> findByCompanyId(Integer companyId);

    // Add any additional custom query methods if needed
}
