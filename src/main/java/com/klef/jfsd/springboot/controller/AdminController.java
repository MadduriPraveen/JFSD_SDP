package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Company;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.model.Job;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CompanyRepository;
import com.klef.jfsd.springboot.repository.JobRepository;
import com.klef.jfsd.springboot.repository.UserRepository;
import com.klef.jfsd.springboot.service.JobService;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Controller
@SessionAttributes("admin")
public class AdminController {

    @Autowired
    private AdminRepository adminRepository;

    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    private CompanyRepository companyRepository;
    
    @Autowired
    private JobRepository jobRepository;

    @GetMapping("/adminlogin")
    public String showLoginForm() {
        return "login";
    }

    @PostMapping("/adminlogin")
    public String login(@RequestParam String email, @RequestParam String password, Model model) {
        Admin admin = adminRepository.findByEmail(email);

        if (admin != null && admin.getPassword().equals(password)) {
            model.addAttribute("admin", admin);
            return "redirect:/userList";
        } else {
            model.addAttribute("error", "Invalid email or password. Please try again.");
            return "redirect:/adminlogin.jsp";
        }
    }

    @GetMapping("/logout")
    public String logout(SessionStatus sessionStatus) {
        sessionStatus.setComplete(); // This will invalidate the session
        return "redirect:/adminlogin.jsp";
    }


    @GetMapping("/userList")
    public String showUserList(Model model) {
        if (!model.containsAttribute("admin")) {
            return "redirect:/adminlogin.jsp";
        }

        List<User> userList = userRepository.findAll();
        model.addAttribute("users", userList);
        return "userList";
    }
    
    @GetMapping("/jobList")
    public String showJobList(Model model) {
    	if (!model.containsAttribute("admin")) {
            return "redirect:/adminlogin.jsp";
        }

        List<Job> jobList = jobRepository.findAll();
        model.addAttribute("jobs", jobList);
        return "jobList";
    }
    
    @GetMapping("/jobcard")
    public String showJobList1(Model model) {
    	
        List<Job> jobList = jobRepository.findAll();
        model.addAttribute("jobs", jobList);
        return "jobcard";
    }
    

    @PostMapping("/updateUser")
    public String updateUser(@RequestParam Map<String, String> params) {
        for (Map.Entry<String, String> entry : params.entrySet()) {
            if (entry.getKey().startsWith("username")) {
                String userId = entry.getKey().replace("username_", "");
                User user = userRepository.findById(Integer.parseInt(params.get("userId_" + userId))).orElse(null);

                if (user != null) {
                    user.setUsername(params.get("username_" + userId));
                    user.setName(params.get("name_" + userId));
                    user.setDateofbirth(params.get("dob_" + userId));
                    user.setCity(params.get("city_" + userId));
                    user.setEmail(params.get("email_" + userId));
                    user.setPassword(params.get("pwd_" + userId));
                    user.setContact(params.get("contact_" + userId));
                    user.setAbout(params.get("about_" + userId));
                    user.setLanguages(params.get("languages_" + userId).split(","));
                    user.setEducation(params.get("education_" + userId));
                    user.setSkills(params.get("skills_" + userId));
                    userRepository.save(user);
                }
            }
        }

        return "redirect:/userList";
    }


    
    @PostMapping("/deleteUser")
    public String deleteUser(@RequestParam Integer userId, Model model) {
        userRepository.deleteById(userId);

        // After deletion, retrieve the updated user list
        List<User> userList = userRepository.findAll();
        model.addAttribute("users", userList);

        return "redirect:/userList";
    }
    
    @GetMapping("/companyList")
    public String showCompanyList(Model model) {
        if (!model.containsAttribute("admin")) {
            return "redirect:/adminlogin.jsp";
        }

        List<Company> companyList = companyRepository.findAll();
        model.addAttribute("companies", companyList);

        return "companyList";
    }



    @PostMapping("/updateCompany")
    public String updateCompany(@RequestParam Map<String, String> params) {
        for (Map.Entry<String, String> entry : params.entrySet()) {
            if (entry.getKey().startsWith("name")) {
                String companyId = entry.getKey().replace("name_", "");
                
                if (params.get("companyId_" + companyId) != null) { // Check if companyId is not null
                    Company company = companyRepository.findById(Integer.parseInt(params.get("companyId_" + companyId))).orElse(null);

                    if (company != null) {
                        company.setName(params.get("name_" + companyId));
                        company.setEmail(params.get("email_" + companyId));
                        company.setPassword(params.get("password_" + companyId));
                        company.setAbout(params.get("about_" + companyId));
                        company.setContact(params.get("contact_" + companyId));

                        companyRepository.save(company);
                    }
                }
            }
        }

        return "redirect:/companyList";
    }


    @PostMapping("/deleteCompany")
    public String deleteCompany(@RequestParam Integer companyId, Model model) {
        companyRepository.deleteById(companyId);

        // After deletion, retrieve the updated company list
        List<Company> companyList = companyRepository.findAll();
        model.addAttribute("companies", companyList);

        return "redirect:/companyList";
    }
    
    

    
    @PostMapping("/updateJobbyadmin")
    public String updateJob(@RequestParam Map<String, String> params) {
        for (Map.Entry<String, String> entry : params.entrySet()) {
            if (entry.getKey().startsWith("jobId")) {
                String jobId = entry.getKey().replace("jobId_", "");
                
                if (params.get("jobId_" + jobId) != null) { // Check if jobId is not null
                    Job job = jobRepository.findById(Integer.parseInt(jobId)).orElse(null);

                    if (job != null) {
                        job.setJobTitle(params.get("jobTitle_" + jobId));
                        job.setJobDescription(params.get("jobDescription_" + jobId));
                        job.setJobRole(params.get("jobRole_" + jobId)); // Add jobRole update
                        job.setExperience(params.get("experience_" + jobId)); // Add experience update
                        job.setPrice(params.get("price_" + jobId));
                        job.setLocation(params.get("location_" + jobId));
                        job.setJobType(params.get("jobType_" + jobId)); // Add jobType update

                        jobRepository.save(job);
                    }
                }
            }
        }

        return "redirect:/jobList";
    }


    @Autowired
    private JobService jobService;
   
    @PostMapping("/deleteJobbyadmin")
    public String deleteJobadmin(@RequestParam Integer jobId, Model model) {
        Job job = jobService.getJobById(jobId);

        if (job != null) {
            jobService.deleteJob(job);
        }

        return "redirect:/jobList";
    }

    
    


    
    
}
