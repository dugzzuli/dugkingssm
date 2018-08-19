package com.dugzzuli.dug.util;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.cn.smart.SmartChineseAnalyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.TextField;
import org.apache.lucene.document.Field.Store;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.index.Term;
import org.apache.lucene.queryparser.classic.ParseException;
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.queryparser.classic.QueryParserBase;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.store.NoLockFactory;
import org.apache.lucene.util.Version;
import org.json.JSONException;
import org.json.JSONObject;

import com.dugzzuli.dug.entity.News;

/**
 * @author Administrator
 *
 */
public final class LuceneUtil {
	public static Version luceneVersion = Version.LUCENE_4_10_4;
	private static final String dir_index = "E:\\lucene\\read\\";
	private static final String dir_write = "E:\\lucene\\write\\";
	private IndexSearcher searcher;
	private Analyzer analyzer;
	private IndexWriter indexWriter;
	private Directory fsDirectory;
	private IndexWriterConfig iwConfig;
	private File path;
	/**
	 * @throws IOException
	 * 
	 */
	public LuceneUtil(File path) throws IOException {
		this.path=path;
		analyzer = new StandardAnalyzer();
		IndexWriterConfig iwConfig = new IndexWriterConfig(luceneVersion, analyzer);
		iwConfig.setOpenMode(IndexWriterConfig.OpenMode.CREATE_OR_APPEND);
		fsDirectory = FSDirectory.open(path, NoLockFactory.getNoLockFactory());
		indexWriter = new IndexWriter(fsDirectory, iwConfig);

	}

	private IndexSearcher getReader() throws IOException {

		IndexWriterConfig writerConfig = new IndexWriterConfig(luceneVersion, analyzer);
		IndexWriter writer = new IndexWriter(fsDirectory, writerConfig);
		// IndexReader,����IndexWriter�򿪵�IndexReader
		IndexReader reader = DirectoryReader.open(writer, true);

		searcher = new IndexSearcher(reader);
		// update index
		// openIfChanged,������ύ��δ�ύ�ı仯���ʹ��µ�indexreader����ס�ر�old reader
		IndexReader newReader = DirectoryReader.openIfChanged((DirectoryReader) reader, indexWriter, true);
		if (reader != newReader) {
			searcher = new IndexSearcher(newReader);
			reader.close();
		}
		return searcher;
	}

	public void close() throws IOException {
		if (Objects.nonNull(indexWriter))
			indexWriter.close();
		if (Objects.nonNull(fsDirectory))
			fsDirectory.close();
		if (Objects.nonNull(analyzer))
			analyzer.close();
	}

	public LuceneUtil addDocument(String ID, String content) throws IOException {

		TextField postIdField = new TextField("id", ID, Store.YES);

		TextField postContentField = new TextField("content", content, Store.NO);

		Document doc = new Document();
		doc.add(postIdField);
		doc.add(postContentField);
		synchronized (this) {
			indexWriter.addDocument(doc);
			indexWriter.commit();
		}
		return this;
	}

	public LuceneUtil addDocument(News model) throws IOException {

		TextField postIdField = new TextField("id", model.getId().toString(), Store.YES);
		TextField postAuthorField = new TextField("author", model.getAuthor().toString(), Store.YES);
		TextField postContentField = new TextField("content", model.getContent().toString(), Store.NO);

		Document doc = new Document();
		doc.add(postIdField);
		doc.add(postAuthorField);
		doc.add(postContentField);
		synchronized (this) {
			indexWriter.addDocument(doc);
			indexWriter.commit();
		}
		return this;
	}

	public ScoreDoc[] searchDocument(String word) throws IOException, ParseException {
		getReader();
		QueryParser parser = new QueryParser("content", new StandardAnalyzer());//
		Query query = null;
		query = parser.parse(word);
		TopDocs tds = null;
		tds = searcher.search(query, 10);
		ScoreDoc[] sds = tds.scoreDocs;
		for (ScoreDoc sd : sds) {
			Document d = null;
			d = searcher.doc(sd.doc);
			System.out.println(d.get("id"));
		}
		return sds;

	}


    /**
     * ���һ�������ļ�
     */
    public  void check() {
        DirectoryReader directoryReader = null;
        try {
            Directory directory = FSDirectory.open(path);
            directoryReader = DirectoryReader.open(directory);
            // ͨ��reader������Ч�Ļ�ȡ���ĵ�������
            // ��Ч�������ĵ�
            System.out.println("��Ч�������ĵ�:" + directoryReader.numDocs());
            // �ܹ��������ĵ�
            System.out.println("�ܹ��������ĵ�:" + directoryReader.maxDoc());
            // ɾ���������ĵ�����ʵ��ǡ����Ӧ�����ڻ���վ��������ĵ�
            System.out.println("ɾ���������ĵ�:" + directoryReader.numDeletedDocs());
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (directoryReader != null) {
                    directoryReader.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    
	public LuceneUtil delete(String ID) throws IOException {

		synchronized (this) {
			indexWriter.deleteDocuments(new Term("id", ID));
			indexWriter.forceMergeDeletes();
			indexWriter.commit();
		}
		return this;
	}

}