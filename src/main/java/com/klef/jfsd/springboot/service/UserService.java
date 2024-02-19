package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.User;

public interface UserService
{
	public String adduser(User user);
	
	public User checkuserlogin(String email,String pwd);

	public User getUserById(Integer userId);

	public void updateUser(User user);

}
