package com.dugzzuli.dug.util;

import java.util.Iterator;
import java.util.List;

import com.hankcs.hanlp.HanLP;
public class HanLPUtil {
	
	public static String extractSummary(String content, int count) {

	
		List<String> sentenceList = HanLP.extractSummary(content, count);
		StringBuilder sb=new StringBuilder();
		for (int i = 0; i < sentenceList.size(); i++) {
			if(i==0)
			{
				sb.append(sentenceList.get(i));
			}else {
				sb.append(","+sentenceList.get(i));
			}
		}
		return sb.toString();
	}
	
	public static String extractKeyword(String content, int count) {
		
		List<String> sentenceList = HanLP.extractKeyword(content, count);
		StringBuilder sb=new StringBuilder();
		for (int i = 0; i < sentenceList.size(); i++) {
			if(i==0)
			{
				sb.append(sentenceList.get(i));
			}else {
				sb.append(","+sentenceList.get(i));
			}
		}
		return sb.toString();
	}
}
