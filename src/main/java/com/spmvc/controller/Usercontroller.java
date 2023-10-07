package com.spmvc.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spmvc.dao.Notedao;
import com.spmvc.entity.Note;
import com.spmvc.entity.User;

@Controller
@RequestMapping("/user")
public class Usercontroller {

	@Autowired
	private Notedao nd;
	@RequestMapping("/addnote")
	public String addnote() {
		return "addnote";
	}
	@RequestMapping("/viewnote")
	public String viewnote(Model m,HttpSession hs) {
	   User u=	(User) hs.getAttribute("logeduser");
	   List<Note> nl=nd.getAllNotesbyUser(u);
	   m.addAttribute("notelist", nl);
		return "viewnote";
	}

	@RequestMapping(path = "noteadd",method = RequestMethod.POST)
	public String noteadd(@ModelAttribute Note n,HttpSession hs) {
		User u=(User) hs.getAttribute("logeduser");
		n.setUser(u);
		n.setDate(LocalDateTime.now().toString());
		nd.saveNote(n);
		hs.setAttribute("msg", "Done ! Note Added ..");
		return "redirect:/user/addnote";
	}
	@RequestMapping("deletenote/{id}")
	public String deleteNote(@PathVariable("id") int id,HttpSession hs) {
		nd.deleteNote(id);
		hs.setAttribute("delmsg", "Your Note Was Deleted !");
		return "redirect:/user/viewnote";
	}
	@RequestMapping("editnote/{id}")
	public String editNote(Model m,@PathVariable("id")int id) {
		Note u=nd.getNoteById(id);
		m.addAttribute("en", u);
		return "editnote";
	}

	@RequestMapping(path = "editednote",method = RequestMethod.POST)
	public String editedNote(@ModelAttribute Note n,HttpSession hs) {
		User u=(User) hs.getAttribute("logeduser");
		n.setUser(u);
		n.setDate(LocalDateTime.now().toString());
		nd.updateNote(n);
		hs.setAttribute("upmsg", "Change Updated ");
		return "redirect:/user/viewnote";
	}
}
