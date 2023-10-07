package com.spmvc.dao;


import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spmvc.entity.User;

@Repository
public class Userdaoimpl implements Userdao{

	@Autowired
	private HibernateTemplate ht;
	@Override
	@Transactional
	public int saveUser(User u) {
		int i=(int) ht.save(u);
		return i;
	}

	@Override
	public User loguser(String email, String password) {
		String sql="from User Where email=:em and password=:pw";
		User u=(User) ht.execute(s->{
		Query q=s.createQuery(sql);
		q.setString("em", email);
		q.setString("pw", password);
		return q.uniqueResult();
		});
		return u;
	}

	
}
