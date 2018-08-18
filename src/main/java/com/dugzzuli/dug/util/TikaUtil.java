package com.dugzzuli.dug.util;

import org.apache.tika.sax.BodyContentHandler;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

import org.apache.tika.exception.TikaException;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.parser.html.HtmlParser;
import org.apache.tika.sax.BodyContentHandler;

import org.xml.sax.SAXException;
public class TikaUtil {
	
	public static String getStringNoHtml(String content) 
	{
		 //detecting the file type
	      BodyContentHandler handler = new BodyContentHandler();
	      Metadata metadata = new Metadata();
	      InputStream  inputstream = new ByteArrayInputStream(content.getBytes());
	      ParseContext pcontext = new ParseContext();
	      
	      //Html parser 
	      HtmlParser htmlparser = new HtmlParser();
	      try {
			htmlparser.parse(inputstream, handler, metadata,pcontext);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (TikaException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	      
	      return HTMLSpirit.delHTMLTag(handler.toString());
	}
	
	
}
