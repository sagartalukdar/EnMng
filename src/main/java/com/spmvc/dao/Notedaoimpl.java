package com.spmvc.dao;

import java.util.List;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spmvc.entity.Note;
import com.spmvc.entity.User;

@Repository
public class Notedaoimpl implements Notedao{

	@Autowired
	private HibernateTemplate ht;
	@Override
	@Transactional
	public int saveNote(Note n) {
	int i=(int) ht.save(n);
	return i;
	}

	@Override
	public List<Note> getAllNotesbyUser(User u) {
		List<Note> nl=ht.execute(s->{
			String sql="from Note Where user=:us";
			Query q=s.createQuery(sql);
			q.setEntity("us", u);
			return q.getResultList();
		});
		return nl;
	}

	@Override
	public Note getNoteById(int id) {
	Note n=	ht.get(Note.class, id);
	return n;
	}

	@Override
	@Transactional
	public void deleteNote(int id) {
		Note n=ht.get(Note.class, id);
		ht.delete(n);
		
	}

	@Override
	@Transactional
	public void updateNote(Note n) {
		ht.update(n);		
	}

}
