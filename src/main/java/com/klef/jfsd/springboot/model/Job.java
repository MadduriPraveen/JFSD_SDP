package com.klef.jfsd.springboot.model;

import jakarta.persistence.*;

@Entity
@Table(name="job_table")
public class Job {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="job_id")
    private int id;

    @ManyToOne
    @JoinColumn(name = "company_id")
    private Company company;

    @Column(name="job_title", nullable=false, length=50)
    private String jobTitle;

    @Column(name="job_description", nullable=false)
    private String jobDescription;

    @Column(name="job_role", nullable=false, length=30)
    private String jobRole;

    @Column(name="experience", nullable=false)
    private String experience;

    @Column(name="location", nullable=false)
    private String location;

    @Column(name="price")
    private String price;

    @Column(name="job_type", nullable=false, length=20)
    private String jobType;

    @Column(name="users_applied")
    private int usersApplied;

    // Add any additional fields here

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getJobDescription() {
        return jobDescription;
    }

    public void setJobDescription(String jobDescription) {
        this.jobDescription = jobDescription;
    }

    public String getJobRole() {
        return jobRole;
    }

    public void setJobRole(String jobRole) {
        this.jobRole = jobRole;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String string) {
        this.price = string;
    }

    public String getJobType() {
        return jobType;
    }

    public void setJobType(String jobType) {
        this.jobType = jobType;
    }

    public int getUsersApplied() {
        return usersApplied;
    }

    public void setUsersApplied(int usersApplied) {
        this.usersApplied = usersApplied;
    }

    @Override
    public String toString() {
        return "Job [id=" + id + ", company=" + company + ", jobTitle=" + jobTitle +
               ", jobDescription=" + jobDescription + ", jobRole=" + jobRole +
               ", experience=" + experience + ", location=" + location +
               ", price=" + price + ", jobType=" + jobType +
               ", usersApplied=" + usersApplied + "]";
    }
}