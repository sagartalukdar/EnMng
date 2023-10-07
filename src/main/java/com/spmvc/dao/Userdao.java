package com.spmvc.dao;

import com.spmvc.entity.User;

public interface Userdao {

	public int saveUser(User u) ;
		
	public User loguser(String email,String password) ;
		
	
}
