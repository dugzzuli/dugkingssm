package com.soecode.lyf.service;

import java.util.List;

import com.soecode.lyf.dto.AppointExecution;
import com.soecode.lyf.entity.Book;

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
