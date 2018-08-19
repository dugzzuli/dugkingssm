package com.dugzzuli.dug.test;

import java.io.File;
import java.io.IOException;

import org.apache.lucene.queryparser.classic.ParseException;

import com.dugzzuli.dug.util.LuceneUtil;

public class AppLucene {
	private static final String dir_index = "E:\\lucene\\read\\";
	private static final String dir_write = "E:\\lucene\\write\\";

	public static void main(String[] args) {

		LuceneUtil lu;
		try {
			lu = new LuceneUtil(new File(dir_write));
			lu.addDocument("1", "我们这里等你");
			lu.delete("1");
			lu.searchDocument("我");
			lu.check();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("Hello World!");
	}
}
