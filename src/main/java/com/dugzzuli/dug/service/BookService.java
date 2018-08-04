package com.dugzzuli.dug.service;

import java.util.List;

import com.dugzzuli.dug.dto.AppointExecution;
import com.dugzzuli.dug.entity.Book;

/**
 * 
 */
public interface BookService {

	/**
	 * 
	 * 
	 * @param bookId
	 * @return
	 */
	Book getById(long bookId);

	/**
	 * 
	 * 
	 * @return
	 */
	List<Book> getList();

	/**
	 * 
	 * 
	 * @param bookId
	 * @param studentId
	 * @return
	 */
	AppointExecution appoint(long bookId, long studentId);

}
