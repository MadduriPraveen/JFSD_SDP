package com.klef.jfsd.springboot.repository;

import com.klef.jfsd.springboot.model.Company;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CompanyRepository extends JpaRepository<Company, Integer> {
    Company findByEmail(String email);
}