package com.spmvc.dao;

import java.util.List;

import com.spmvc.entity.Note;
import com.spmvc.entity.User;

public interface Notedao {

	public int saveNote(Note n);
	
	public List<Note> getAllNotesbyUser(User u);
	
	public Note getNoteById(int id);
	
	public void deleteNote(int id);
	
	public void updateNote(Note n);
}
