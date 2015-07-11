package mum.ea.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import mum.ea.dao.IBookDao;
import mum.ea.model.Book;
//import cs544.sample.NoSuchResourceException;

public class BookDao implements IBookDao {
	private static int idCount = 1;
	private Map<Integer, Book> books = new HashMap<Integer, Book>();

	public BookDao() {
		add(new Book());
		add(new Book());
	}

	public List<Book> getAll() {
		return new ArrayList<Book>(books.values());
	}

	public void add(Book book) {
		book.setId(idCount);
		books.put(idCount, book);
		idCount++;
	}

	public Book get(int id) {
		Book result = books.get(id);

		if (result == null) {
//			throw new NoSuchResourceException("Book", id);
		}

		return result;
	}

	public void update(int bookId, Book book) {
		books.put(bookId, book);
	}

	public void delete(int bookId) {
		// TODO Auto-generated method stub
		
	}

//	public void delete(int bookId) {
//		Book removed = books.remove(bookId);
//		if (removed == null) {
//			throw new NoSuchResourceException("Book", bookId);
//		}
//	}
}
