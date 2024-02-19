package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.util.List;

@Entity
@Table(name="user_table")
public class User 
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="user_id")
    private int id;

    @Column(name="user_username", unique=true, nullable=false, length=30)
    private String username;

    @Column(name="user_name", nullable=false, length=50)
    private String name;

    @Column(name="user_dob", nullable=false, length=20)
    private String dateofbirth;

    @Column(name="user_email", unique=true, nullable=false, length=30)
    private String email;

    @Column(name="user_password", nullable=false, length=30)
    private String password;

    @Column(name="user_city", nullable=false)
    private String city;

    @Column(name="user_contact", unique=true, nullable=false)
    private String contact;

    @Column(name="user_active", nullable=false)
    private boolean active; // true or false

    @Column(name="user_about")
    private String about;

    @ElementCollection
    @Column(name="user_languages")
    private List<String> languages;

    @Column(name="user_education")
    private String education;

    @Column(name="user_skills")
    private String skills;

    @Column(name="user_profilepic")
    private String profilepic;

    @Column(name="user_resume")
    private String resume;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateofbirth() {
        return dateofbirth;
    }

    public void setDateofbirth(String dateofbirth) {
        this.dateofbirth = dateofbirth;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public List<String> getLanguages() {
        return languages;
    }

    public void setLanguages(List<String> languages) {
        this.languages = languages;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getSkills() {
        return skills;
    }

    public void setSkills(String skills) {
        this.skills = skills;
    }

    public String getProfilepic() {
        return profilepic;
    }

    public void setProfilepic(String profilepic) {
        this.profilepic = profilepic;
    }

    public String getResume() {
        return resume;
    }

    public void setResume(String resume) {
        this.resume = resume;
    }

    @Override
    public String toString() {
        return "User [id=" + id + ", username=" + username + ", name=" + name + ", dateofbirth=" + dateofbirth +
               ", email=" + email + ", password=" + password + ", city=" + city + ", contact=" + contact +
               ", active=" + active + ", about=" + about + ", languages=" + languages + ", education=" + education +
               ", skills=" + skills + ", profilepic=" + profilepic + ", resume=" + resume + "]";
    }

	public void setLanguages(String[] split) {
		// TODO Auto-generated method stub
		
	}
}
