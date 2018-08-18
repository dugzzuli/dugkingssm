package com.dugzzuli.dug.util;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
    public static String dateToStr(Date date){
        if(date == null){
            return "";
        }
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return df.format(date);
    }
    
    public static String dateToStr(Date date,String format){
        if(date == null){
            return "";
        }
        SimpleDateFormat df = new SimpleDateFormat(format);
        return df.format(date);
    }
    
    public static Date strToDate(String dateStr){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        try {
            date = df.parse(dateStr);
            
        } catch (ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return date;
    }
    
    public static Date strToDate(String dateStr,String format){
        SimpleDateFormat df = new SimpleDateFormat(format);
        Date date = new Date();
        try {
            date = df.parse(dateStr);
            
        } catch (ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return date;
    }
    
    public static Integer compareTimeOnly(Date date1,Date date2){
        Integer time1 = date1.getSeconds() + date1.getMinutes()*60 + date1.getHours()*60*60;
        Integer time2 = date2.getSeconds() + date2.getMinutes()*60 + date2.getHours()*60*60;
        if(time1 > time2){
            return 1;
        }
        if(time1 < time2){
            return -1;
        }
        return 0;
    }
    
    public static void main(String[] args) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            Date date1 = df.parse("2016-01-01 10:15:00");
            Date date2 = df.parse("2015-01-01 09:15:00"); 
            System.out.println(DateUtil.compareTimeOnly(date1, date2));
        } catch (ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        System.out.println(DateUtil.dateToStr(new Date(), "HH:mm:ss"));
    }
}