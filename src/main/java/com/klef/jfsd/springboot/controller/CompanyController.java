package com.klef.jfsd.springboot.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.klef.jfsd.springboot.model.Company;
import com.klef.jfsd.springboot.model.Job;
import com.klef.jfsd.springboot.repository.JobRepository;
import com.klef.jfsd.springboot.service.CompanyService;
import com.klef.jfsd.springboot.service.JobService;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class CompanyController {

    @Autowired
    private CompanyService companyService;
    
    @Autowired
    private JobRepository jobRepository;


    @GetMapping("/companyreg")
    public ModelAndView companyreg() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("company_register");
        return mv;
    }

    @PostMapping("/insertcompany")
    public ModelAndView insert(@RequestParam(value = "logoFile", required = false) MultipartFile logoFile,
                               HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String msg = null;

        try {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String about = request.getParameter("about");
            String contact = request.getParameter("contact");

            Company company = new Company();
            company.setName(name);
            company.setEmail(email);
            company.setPassword(password);
            company.setAbout(about);
            company.setContact(contact);

            // File Upload handling
            if (logoFile != null && !logoFile.isEmpty()) {
                // Handle file upload for logo
                // Save the file and set the path to company.setLogo();
            }

            msg = companyService.addCompany(company);

            mv.setViewName("redirect:/companylogin.jsp");
            mv.addObject("message", msg);
        } catch (DuplicateKeyException e) {
            msg = "Email is already in use. Please choose a different one.";
            mv.setViewName("companyregister");
            mv.addObject("message", msg);
        } catch (Exception e) {
            msg = e.getMessage();
            mv.setViewName("companyregister");
            mv.addObject("message", msg);
        }
        return mv;
    }

    @GetMapping("/companylogin")
    public ModelAndView companylogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("companylogin");
        return mv;
    }

    @PostMapping("/checkcompanylogin")
    public ModelAndView checkcompanylogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Company company = companyService.checkCompanyLogin(email, password);

        if (company != null) {
            // session
            HttpSession session = request.getSession();
            session.setAttribute("cid", company.getId());
            session.setAttribute("cname", company.getName());
            session.setMaxInactiveInterval(300); // 120 seconds
            mv.setViewName("redirect:/companydashboard"); 
        } else {
            mv.setViewName("companylogin");
            mv.addObject("message", "Invalid username or password.");
        }
        return mv;
    }

  
    
    @GetMapping("/companylogout")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate(); // Invalidate the session
        }
        return "redirect:/companylogin.jsp";
    }

    @GetMapping("/companyprofile")
    public ModelAndView companyProfile(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        HttpSession session = request.getSession(false);

        if (session != null && session.getAttribute("cid") != null) {
            Integer companyId = (Integer) session.getAttribute("cid");
            Company company = companyService.getCompanyById(companyId);
            mv.addObject("company", company);
            mv.setViewName("companyprofile");
        } else {
            mv.setViewName("redirect:/companylogin.jsp");
        }

        return mv;
    }

    @GetMapping("/companydashboard")
    public ModelAndView companyDashboard(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        HttpSession session = request.getSession(false);

        if (session != null && session.getAttribute("cid") != null) {
            Integer companyId = (Integer) session.getAttribute("cid");
            Company company = companyService.getCompanyById(companyId);
            List<Job> jobs = company.getJobs();
            mv.addObject("company", company);
            mv.addObject("jobs", jobs);
            mv.setViewName("companydashboard");
        } else {
            mv.setViewName("redirect:/companylogin.jsp");
        }

        return mv;
    }


    @PostMapping("/updateCompanyData")
    public ModelAndView updateCompanyData(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        // Get company ID from session
        HttpSession session = request.getSession(false);
        Integer companyId = (Integer) session.getAttribute("cid");

        // Get company data from the database
        Company company = companyService.getCompanyById(companyId);

        // Update company data from the form
        company.setName(request.getParameter("name"));
        company.setEmail(request.getParameter("email"));
        company.setAbout(request.getParameter("about"));
        company.setContact(request.getParameter("contact"));

        // Check if password field is not null and not empty, and update it if necessary
        String newPassword = request.getParameter("password");
        if (newPassword != null && !newPassword.isEmpty()) {
            company.setPassword(newPassword);
        }

        // Save the updated company data
        companyService.updateCompany(company);

        // Redirect to the profile page or any other appropriate page after update
        mv.setViewName("redirect:/companyprofile");

        return mv;
    }
    
    @Autowired
    private JobService jobService;

    @PostMapping("/addJob")
    public String addJob(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        
        // Check if the session is valid and if company ID is set
        if (session != null && session.getAttribute("cid") != null) {
            Integer companyId = (Integer) session.getAttribute("cid");

            // Get the company using the company ID
            Company company = companyService.getCompanyById(companyId);

            if (company != null) {
                Job newJob = new Job();
                newJob.setCompany(company);
                newJob.setJobTitle(request.getParameter("jobTitle"));
                newJob.setJobDescription(request.getParameter("jobDescription"));
                newJob.setJobRole(request.getParameter("jobRole"));
                newJob.setExperience(request.getParameter("experience"));
                newJob.setLocation(request.getParameter("location"));
                newJob.setPrice(request.getParameter("price"));
                newJob.setJobType(request.getParameter("jobType"));

                jobService.saveJob(newJob);

                return "redirect:/companydashboard"; // Assuming this is the URL mapping for your dashboard
            }
        }

        // If there's an issue with the session or company ID, you may want to handle it here
        return "redirect:/companylogin.jsp"; // Redirect to login page if there's an issue
    }
    
    @PostMapping("/updateJob")
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

        return "redirect:/companydashboard";
    }
    
    @PostMapping("/deleteJob")
    public String deleteJob(@RequestParam Integer jobId, Model model) {
        Job job = jobService.getJobById(jobId);

        if (job != null) {
            jobService.deleteJob(job);
        }

        return "redirect:/companydashboard";
    }



    private static final Logger logger = LoggerFactory.getLogger(CompanyController.class);
}