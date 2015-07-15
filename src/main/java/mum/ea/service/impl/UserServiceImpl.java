package mum.ea.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mum.ea.dao.UserDao;
import mum.ea.model.User;
import mum.ea.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userdao;

	public void save(User user) {
		user.setPassword(encryptPassword(user.getPassword()));
		userdao.save(user);

	}


	public List<User> findAll() {
		return (List<User>)userdao.findAll();
	}
	
	private String encryptPassword(String password) {
		BCryptPasswordEncoder pass = new BCryptPasswordEncoder();
		return pass.encode(password);
	}


	public User findOne(Long id) {
		return userdao.findOne(id);
	}
	
	public void delete(Long id){
		userdao.delete(id);
	}


}
