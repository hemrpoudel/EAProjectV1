package mum.ea.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import mum.ea.dao.IBookDao;
import mum.ea.model.Book;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	@Resource
	private IBookDao bookDao;
	
	@RequestMapping("/login")
	public String redirectRoot() {
//		return "redirect:/books";
		return "/login/login";
	}
	
	@RequestMapping(value={"/","/home"})
	public String home() {
		return "index";
	}
	
	@RequestMapping(value="/books", method=RequestMethod.GET)
	public String getAll(Model model) {
		model.addAttribute("books", bookDao.getAll());
		return "bookList";
	}
	
	@RequestMapping(value="/books", method=RequestMethod.POST)
	public String add(@Valid Book book, BindingResult bindingResult) {
		if(bindingResult.hasErrors() )
			return "redirect:/books";
		else{
		bookDao.add(book);
		return "redirect:/books";
		}
	}

	@RequestMapping(value="/books/{id}", method=RequestMethod.GET)
	public String get(@PathVariable int id, Model model) {
		model.addAttribute("book", bookDao.get(id));
		return "bookDetail";
	}
	
	@RequestMapping(value="/books/{id}", method=RequestMethod.POST)
	public String update(Book book, @PathVariable int id) {
		bookDao.update(id, book); // car.id already set by binding
		return "redirect:/books";
	}
	
	@RequestMapping(value="/books/delete", method=RequestMethod.POST)
	public String delete(int carId) {
		bookDao.delete(carId);
		return "redirect:/books";
	}


//	@ExceptionHandler(value=NoSuchResourceException.class)
//	public ModelAndView handle(Exception e) {
//		ModelAndView mv = new ModelAndView();
//		mv.getModel().put("e", e);
//		mv.setViewName("noSuchResource");
//		return mv;
//	}

}
