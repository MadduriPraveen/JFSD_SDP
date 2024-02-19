package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Company;

public interface CompanyService {
    String addCompany(Company company);
    Company checkCompanyLogin(String email, String password);
    Company getCompanyById(Integer id);
    void updateCompany(Company company);
}