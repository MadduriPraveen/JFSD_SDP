package com.klef.jfsd.springboot.model;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name="company_table")
public class Company {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="company_id")
    private int id;

    @Column(name="company_email", unique=true, nullable=false, length=30)
    private String email;

    @Column(name="company_name", nullable=false, length=50)
    private String name;

    @Column(name="company_password", nullable=false, length=30)
    private String password;

    @Column(name="company_about")
    private String about;

    @OneToMany(mappedBy = "company", cascade = CascadeType.ALL)
    private List<Job> jobs;

    @Column(name="company_contact", nullable=false)
    private String contact;

    // Add any additional fields here

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public List<Job> getJobs() {
        return jobs;
    }

    public void setJobs(List<Job> jobs) {
        this.jobs = jobs;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    @Override
    public String toString() {
        return "Company [id=" + id + ", email=" + email + ", name=" + name + ", password=" + password +
                ", about=" + about + ", jobs=" + jobs + ", contact=" + contact + "]";
    }
}