package com.klef.jfsd.springboot.controller;

import java.util.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Company;
import com.klef.jfsd.springboot.model.Job;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.JobAppliedRepository;
import com.klef.jfsd.springboot.repository.JobRepository;
import com.klef.jfsd.springboot.service.JobAppliedService;
import com.klef.jfsd.springboot.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import com.klef.jfsd.springboot.model.JobApplied;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;




@Controller
public class ClientController {

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String main() {
        return "Homebanner";
    }

    @GetMapping("userreg")
    public ModelAndView userreg() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("login");
        return mv;
    }
    


   


    @PostMapping("insertuser")
    public ModelAndView insert(@RequestParam(value = "profilepicFile", required = false) MultipartFile profilepicFile,
                               @RequestParam(value = "resumeFile", required = false) MultipartFile resumeFile,
                               HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String msg = null;

        try {
            String username = request.getParameter("username");
            String name = request.getParameter("name");
            String dob = request.getParameter("dob");
            String city = request.getParameter("city");
            String email = request.getParameter("email");
            String pwd = request.getParameter("pwd");
            String contact = request.getParameter("contact");
            String about = "";
            String education = "";
            String skills = "";
            List<String> languages = new ArrayList<>();

            User user = new User();

            user.setUsername(username);
            user.setName(name);
            user.setDateofbirth(dob);
            user.setCity(city);
            user.setEmail(email);
            user.setPassword(pwd);
            user.setContact(contact);
            user.setActive(true);
            user.setAbout(about);
            user.setEducation(education);
            user.setSkills(skills);
            user.setLanguages(languages);

            // File Upload handling
            if (profilepicFile != null && !profilepicFile.isEmpty()) {
                // Handle file upload for profilepic
                // Save the file and set the path to user.setProfilepic();
            }

            if (resumeFile != null && !resumeFile.isEmpty()) {
                // Handle file upload for resume
                // Save the file and set the path to user.setResume();
            }

            msg = userService.adduser(user);

            mv.setViewName("redirect:/signin.jsp");
            mv.addObject("message", msg);
        } catch (DuplicateKeyException e) {
            msg = "Email is already in use. Please choose a different one.";
            mv.setViewName("signup");
            mv.addObject("message", msg);
        } catch (Exception e) {
            msg = e.getMessage();
            mv.setViewName("signup");
            mv.addObject("message", msg);
        }
        return mv;
    }

    @GetMapping("userlogin") // URI & method name can be different
    public ModelAndView userlogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("login");
        return mv;
    }

    
    @PostMapping("checkuserlogin")
    public ModelAndView checkuserlogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        String email = request.getParameter("email");
        String pwd = request.getParameter("pwd");

        User user = userService.checkuserlogin(email, pwd);

        if (user != null) {
            // session
            HttpSession session = request.getSession();
            session.setAttribute("uid", user.getId());
            session.setAttribute("uname", user.getName());
            session.setMaxInactiveInterval(300); // 60 seconds
            mv.setViewName("redirect:/Homebanner.jsp"); // Redirect to a new URL after successful POST
        } else {
            mv.setViewName("signin");
            mv.addObject("message", "Invalid username Or Password...!");
        }
        return mv;
    }

    @GetMapping("sign-out")
    public ModelAndView signOut(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        // Get the session
        HttpSession session = request.getSession(false);

        if (session != null) {
            // Invalidate the session
            session.invalidate();
        }

        // Redirect to Homebanner.jsp
        mv.setViewName("redirect:/Homebanner.jsp");
        return mv;
    }    
    
    @GetMapping("profile")
    public ModelAndView userProfile(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        // Check if user is logged in
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("uid") != null) {
            Integer userId = (Integer) session.getAttribute("uid");

            // Get user data from the database
            User user = userService.getUserById(userId);

            System.out.println("UID from session: " + session.getAttribute("uid"));

            // Pass the user data to the view
            mv.addObject("user", user);
            mv.setViewName("profile");
        } else {
            // User is not logged in, redirect to login page
            mv.setViewName("redirect:/signin.jsp");
        }

        return mv;
    }
    @GetMapping("data")
    public ModelAndView userData(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        // Check if user is logged in
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("uid") != null) {
            Integer userId = (Integer) session.getAttribute("uid");

            // Get user data from the database
            User user = userService.getUserById(userId);

            // Pass the user data to the view
            mv.addObject("user", user);

            // Set the view name to render the data.jsp view
            mv.setViewName("data");
        } else {
            // User is not logged in, redirect to login page
            mv.setViewName("redirect:/signin.jsp");
        }

        return mv;
    }

    private static final Logger logger = LoggerFactory.getLogger(ClientController.class);

    @PostMapping("updateUserData")
    public ModelAndView updateUserData(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        // Get user ID from session
        HttpSession session = request.getSession(false);
        Integer userId = (Integer) session.getAttribute("uid");

        // Get user data from the database
        User user = userService.getUserById(userId);

        // Update user data from the form
        user.setName(request.getParameter("name"));
        user.setDateofbirth(request.getParameter("dob"));
        user.setCity(request.getParameter("city"));
        user.setEmail(request.getParameter("email"));
        user.setContact(request.getParameter("contact"));

        // Update About, Education, and Skills
        user.setAbout(request.getParameter("about"));
        user.setEducation(request.getParameter("education"));
        user.setSkills(request.getParameter("skills"));

        // Save the updated user data
        userService.updateUser(user);

        // Redirect to the profile page or any other appropriate page after update
        mv.setViewName("redirect:/profile");

        return mv;
    }
    
    @Autowired
    private JobRepository jobRepository;
   
    @GetMapping("/jobs")
    public String showJobList1(Model model) {
    	
        List<Job> jobList = jobRepository.findAll();
        model.addAttribute("jobs", jobList);
        return "jobs";
    }
    
    @Autowired
    private JobAppliedService jobAppliedService;
    @Autowired
    private JobAppliedRepository jobAppliedRepository;

    @PostMapping("/applyJob")
    public String applyJob(@RequestParam("jobId") String jobIdStr,
                           @RequestParam("companyId") String companyIdStr,
                           @RequestParam("userId") String userIdStr,
                           @RequestParam("userEmail") String userEmail) {
        try {
            if (!jobIdStr.isEmpty() && !companyIdStr.isEmpty() && !userIdStr.isEmpty()) {
                int jobId = Integer.parseInt(jobIdStr);
                int companyId = Integer.parseInt(companyIdStr);
                int userId = Integer.parseInt(userIdStr);

                Job job = new Job(); // Assuming you have a constructor in Job class that accepts an id
                Company company = new Company(); // Assuming you have a constructor in Company class that accepts an id
                User user = new User(); // Assuming you have a constructor in User class that accepts an id

                // Create a new JobApplied object
                JobApplied jobApplied = new JobApplied();
                jobApplied.setJob(job);
                jobApplied.setCompany(company);
                jobApplied.setUser(user);
                jobApplied.setUserEmail(userEmail);

                // Save the JobApplied object
                jobAppliedRepository.save(jobApplied);

                return "redirect:/successpage.jsp";
            } else {
                return "redirect:/errorPage?message=Invalid job ID or company ID";
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return "redirect:/errorPage?message=Invalid job ID or company ID";
        }
    }




    @Autowired
    private JavaMailSender emailSender;

    @PostMapping("/contact")
    public ModelAndView contact(@RequestParam("name") String name,
                                 @RequestParam("email") String email,
                                 @RequestParam("subject") String subject,
                                 @RequestParam("comments") String comments) {
        ModelAndView mv = new ModelAndView();

        try {
            // Create a SimpleMailMessage object
            SimpleMailMessage message = new SimpleMailMessage();

            // Set the sender and recipient email addresses
            message.setFrom(email);
            message.setTo("swamiayyappa1234@gmail.com");

            // Set the subject and body of the email
            message.setSubject(subject);
            message.setText("From: " + name + "\nEmail: " + email + "\nMessage: " + comments);

            // Send the email
            emailSender.send(message);

            // Set a success message
            mv.addObject("message", "Your email has been sent successfully!");
        } catch (Exception e) {
            // Set an error message
            mv.addObject("message", "An error occurred while sending your email. Please try again later.");
        }

        return mv;
    }




    
      
    
}




