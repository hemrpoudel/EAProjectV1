package mum.ea.service;

import java.util.List;

import mum.ea.model.User;

public interface UserService {
	
	public void save(User user);
	public void findOne(int userID);
	
	public List<User> findAll();
	
	

}
