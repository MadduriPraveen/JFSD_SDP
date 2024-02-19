package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.model.Job;

public interface JobRepository extends JpaRepository<Job, Integer> {
    // Add custom query methods if needed
}

