package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Company;
import com.klef.jfsd.springboot.repository.CompanyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CompanyServiceImpl implements CompanyService {

    @Autowired
    private CompanyRepository companyRepository;

    @Override
    public String addCompany(Company company) {
        try {
            companyRepository.save(company);
            return "Company registered successfully!";
        } catch (Exception e) {
            return "An error occurred while registering the company.";
        }
    }

    @Override
    public Company checkCompanyLogin(String email, String password) {
        Company company = companyRepository.findByEmail(email);

        if (company != null && company.getPassword().equals(password)) {
            return company;
        }

        return null; // Invalid login credentials
    }

    @Override
    public Company getCompanyById(Integer id) {
        return companyRepository.findById(id).orElse(null);
    }

    @Override
    public void updateCompany(Company company) {
        companyRepository.save(company);
    }
}
