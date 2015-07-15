package mum.ea.dao;

import mum.ea.model.User;

import org.springframework.data.repository.CrudRepository;

public interface UserDao extends CrudRepository<User, Long> {

}
