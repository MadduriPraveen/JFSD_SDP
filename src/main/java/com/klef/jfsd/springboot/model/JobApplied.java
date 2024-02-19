package com.klef.jfsd.springboot.model;

import jakarta.persistence.*;

@Entity
@Table(name="jobsapplied")
public class JobApplied {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private int id;

    @ManyToOne
    @JoinColumn(name = "job_id")
    private Job job;

    @ManyToOne
    @JoinColumn(name = "company_id")
    private Company company;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @Column(name="user_email", nullable=false)
    private String userEmail;

    // Add any additional fields here

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Job getJob() {
        return job;
    }

    public void setJob(Job job) {
        this.job = job;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    // Add any additional getters and setters if needed

    @Override
    public String toString() {
        return "JobApplied [id=" + id + ", job=" + job + ", company=" + company +
               ", user=" + user + ", userEmail=" + userEmail + "]";
    }
}
