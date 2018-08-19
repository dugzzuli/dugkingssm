package com.dugzzuli.dug.util;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.Date;
import java.util.UUID;

import com.google.gson.Gson;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.BucketManager;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.BatchStatus;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.storage.model.FileInfo;
import com.qiniu.util.Auth;
public class UtilsQiniu {
	//������ַ
    //https://developer.qiniu.com/kodo/sdk/1239/java 
    private static final  String accessKey = "vfXFzlOmW349MU5G1jDS5_oOpmXUQ3XjH_T0VcO4";
    private static final  String secretKey = "lfpIqAl2SYxoF_LzeTNkXnKUFK6fX2UPDUeWsfBv";
    private static final  String bucketNm = "dugking";
    private static final String domain="http://p3tdq0tac.bkt.clouddn.com/";
    public static void main(String[] args) throws Exception {
    	String path="D:\\1.jpg";
        
        System.out.println(domain+uploadPath(path));;

        //ɾ��bucket
//      delete(bucketNm, "fdafaf.gif");

        //��ȡ�ļ���Ϣ
        //String [] files = {"Fg2KGXu0vLjTQhGuOZhWIxWgVhy4"};
        //deletes(bucketNm,files);

        //��ȡ�ļ���Ϣ
        //getBucketsInfo();

        getFileInfo(bucketNm);
    }

	public static String uploadPath(String path) throws FileNotFoundException {
		String key=String.valueOf(DateUtil.dateToStr(new Date(), "yyyyMMddHHmmss"));
    	
        File file = new File(path);
        String fileName = file.getName();
        String suffix = fileName.substring(fileName.lastIndexOf(".") + 1);
        key=key+"."+suffix;
        InputStream in = new FileInputStream(file);
        Result re=upload(bucketNm,in,key);
        System.out.println(re);
        if(re.error)
        {
        	return domain+re.url;
        }
        else
        	return "";
	}

    /**
     * ��ȡbucket���������ļ�����Ϣ
     * @param bucketNm
     */
    public static void getFileInfo(String bucketNm) {
        try {
            BucketManager bucketManager = getBucketManager();

            //�ļ���ǰ׺
            String prefix = "";
            //ÿ�ε����ĳ������ƣ����1000���Ƽ�ֵ 1000
            int limit = 1000;
            //ָ��Ŀ¼�ָ������г����й���ǰ׺��ģ���г�Ŀ¼Ч������ȱʡֵΪ���ַ���
            String delimiter = "";

            //�оٿռ��ļ��б�
            BucketManager.FileListIterator fileListIterator = bucketManager.createFileListIterator(bucketNm, prefix, limit, delimiter);
            while (fileListIterator.hasNext()) {
                //�����ȡ��file list���
                FileInfo[] items = fileListIterator.next();
                for (FileInfo item : items) {
                    System.out.println(item.key);
                    /*System.out.println(item.hash);
                    System.out.println(item.fsize);
                    System.out.println(item.mimeType);
                    System.out.println(item.putTime);
                    System.out.println(item.endUser);*/
                }
            }
        }catch (Exception e) {
            e.printStackTrace();
        }   
    }

    /**
     * ��ȡ���е�bucket
     */
    public static void getBucketsInfo() {
        try {
            BucketManager bucketManager = getBucketManager();
            //��ȡ���е�bucket��Ϣ
            String[]  bucketNms = bucketManager.buckets();
            for(String bucket:bucketNms) {
                System.out.println(bucket);
            }
        }catch (Exception e) {
            e.printStackTrace();
        }   
    }
    /**
     * ɾ������ļ�
     * @param bucketNm bucket������
     * @param keys     �ļ���������
     * //��������������ļ��������ó���1000 , �������ţ���涨��
     * @return
     */
    public static Result deletes(String bucketNm ,String [] keys) {
        Result result = null;
        try {
            //���ļ�����1000��ʱ�򣬾�ֱ�Ӳ�����
            if(keys.length >1000) {
                return new Result(false);
            }

            //�趨ɾ��������
            BucketManager.BatchOperations batchOperations = new BucketManager.BatchOperations();
            batchOperations.addDeleteOp(bucketNm, keys);
            BucketManager bucketManager = getBucketManager();
            //��������
            Response response = bucketManager.batch(batchOperations);

            //��������
            BatchStatus[] batchStatusList = response.jsonToObject(BatchStatus[].class);
            for (int i = 0; i < keys.length; i++) {
                BatchStatus status = batchStatusList[i];
                String key = keys[i];
                System.out.print(key + "\t");
                if (status.code == 200) {
                    System.out.println("delete success");
                } else {
                    System.out.println(status.data.error);
                    return new Result(false);
                }
            }
            result = new Result(true);
        }catch (Exception e) {
            result = new Result(false);
        }   
        return result;
    }
    /**
     * ɾ��bucket�е��ļ�����
     * @param bucketNm bucker����
     * @param key �ļ�����
     * @return 
     */
    public static Result delete(String bucketNm ,String key) {
        Result result = null;
        try {
            BucketManager mg = getBucketManager();
            mg.delete(bucketNm, key);
            result = new Result(true);
        }catch (Exception e) {
            result = new Result(false);
        }   
        return result;
    }

    /**
     * �ϴ�������
     * @param bucketNm  bucket������
     * @param in        ������
     * @return
     */
    public static Result upload(String bucketNm,InputStream in,String key) {
        Result result = null;
        try {
            UploadManager uploadManager = getUploadManager(bucketNm);

            //��ȡtoken
            String token = getToken(bucketNm);

            //�ϴ�������
            Response response = uploadManager.put(in,key,token, null,null);

            //�����ϴ��ɹ��Ľ��
            DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
            System.out.println(putRet.key);
            System.out.println(putRet.hash);

            result = new Result(true,putRet.key);
        }catch (Exception e) {
        	e.printStackTrace();
            result = new Result(false);
        }   
        return result;
    }
    /**
     * ͨ���ļ�����������
     * @param bucketNm
     * @param file
     * @return
     */
    public static Result upload(String bucketNm,File file) {
        Result result = null;
        try {

            UploadManager uploadManager = getUploadManager(bucketNm);

            String token = getToken(bucketNm);
            Response response = uploadManager.put(file.getAbsolutePath(),newName(file.getName()), token);

            //�����ϴ��ɹ��Ľ��
            DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
            System.out.println(putRet.key);
            System.out.println(putRet.hash);

            result = new Result(true,putRet.key);
        } catch (QiniuException e) {
            e.printStackTrace();
            result = new Result(false);
        }
        return result;

    }

    /**
     * ͨ�����ļ��������Զ������µ��ļ�
     * 
     * @param oldName
     * @return
     */
    public static String newName(String oldName) {
        String[] datas = oldName.split("\\.");
        String type = datas[datas.length - 1];
        String newName = UUID.randomUUID().toString() + "." + type;
        return newName;
    }

    /**
     * ��ȡ�ϴ�������
     * @param bucketNm
     * @return
     */
    public static UploadManager getUploadManager(String bucketNm) {
        //����һ����ָ��Zone�����������
        //����Ҫ���Լ���bucket���ϣ���Ȼ���ϴ����ɹ�
        //����    Zone.zone0()
        //����    Zone.zone1()
        //����    Zone.zone2()
        //����    Zone.zoneNa0()
        Configuration cfg = new Configuration();
        UploadManager uploadManager = new UploadManager(cfg);
        return uploadManager;
    }
    /**
     * ��ȡBucket�Ĺ������
     * @return
     */
    public static BucketManager getBucketManager() {
        //����һ����ָ��Zone�����������
        //����Ҫ���Լ���bucket���ϣ���Ȼ���ϴ����ɹ�
        //����    Zone.zone0()
        //����    Zone.zone1()
        //����    Zone.zone2()
        //����    Zone.zoneNa0()
        Configuration cfg = new Configuration(Zone.zone0());
        Auth auth = Auth.create(accessKey, secretKey);
        BucketManager bucketManager = new BucketManager(auth, cfg);
        return bucketManager;
    }
    /**
     * ��ȡ��ţ�Ƶ��ϴ�Token
     * @param bucketNm
     * @return
     */
    public static String getToken(String bucketNm) {
        Auth auth = Auth.create(accessKey, secretKey);
        String upToken = auth.uploadToken(bucketNm);
        return upToken;
    }

    static class Result{
        private String url;
        private boolean error;

        public Result(boolean error) {
            super();
            this.error = error;
        }

        public Result( boolean error,String url) {
            super();
            this.url = url;
            this.error = error;
        }
        public String getUrl() {
            return domain+url;
        }
        public void setUrl(String url) {
            this.url = domain+url;
        }
        public boolean isError() {
            return error;
        }
        public void setError(boolean error) {
            this.error = error;
        }

		@Override
		public String toString() {
			return "Result [url=" + url + ", error=" + error + "]";
		}
        
    }
}
