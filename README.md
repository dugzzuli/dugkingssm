# ����
����SSM��ܣ�SpringMVC + Spring + MyBatis�����ʺϸսӴ�spring��ͯЬ����Ҫ��servlet��jsp������ѧϰ��SSM���Ϻ����Ӧ���������������ǽ���������ѧϰspring boot��spring cloud�ȼ������ÿ���Ч�ʸ���һ��¥��


1. 2018/08/04 SpringMVC + Spring + MyBatis �������

# ����
http://www.cnblogs.com/MyKingDragon/

# ����
- jdk 1.8
- tomcat 8.5


# �ļ�������
# src	
- ��Ŀ¼��ûʲô��˵�ģ�������main��test��
# main
- ��ҪĿ¼�����Է�java�����һЩ��Դ�ļ���
# java
- ������ǵ�java���룬����ļ���Ҫʹ��Build Path -> Use as Source Folder�����������ṹ�᷽��ܶ࣬�½��İ����൱���������½��ļ��п���
# resources
- �����Դ�ļ���Ʃ����ֵ�spring��mybatis��log�����ļ���
# mapper
- ���dao��ÿ��������Ӧ��sql�����������ã�����дdaoImpl��
# spring
- ���ﵱȻ�Ǵ��spring��ص������ļ�����dao service web���㡣
# sql
��ʵ�������û�У�����Ϊ����Ŀ�����Ի��Ǽ��ϰɡ�
# webapp
- ���ò��������Ϥ��Ŀ¼�ˣ������������ǰ�˵ľ�̬��Դ����jsp js css��
# resources
- �������Դ��ָ��Ŀ�ľ�̬��Դ����js css images�ȡ�
# WEB-INF
- ����Ҫ��һ��Ŀ¼���ⲿ������޷����ʣ�ֻ����Ľ�ڲ����ܷ��ʣ����԰�jsp��������������web.xml�ˡ�������������ˣ�Ϊʲô����java�е�resources����������ļ������������ô�ǲ��ǻᱻ�ⲿ��ȡ��������̫���ˣ�����ʱ�������ֻ��webapp��Ļ�ֱ���������Ŀ¼�������������WEB-INF���棬��Ŀ�ڲ���Ȼ����ʹ��classpath:XXX�����ʣ�����IDE��������ò������Ŀ¼�����ﳶԶ��~
# test
- �����ǲ��Է�֧��
# java
- ����java���룬Ӧ��ѭ������ͬ��ԭ������ļ���ͬ��Ҫʹ��Build Path -> Use as Source Folder�����������ṹ�᷽��ܶࡣ
# resources
- ûʲô��˵�ģ�����Ҳ�����õ����������maven�Ĺ淶��



| ����	| ����	| ����
| ------ | ------ | ------ |
| dao	| ���ݷ��ʲ㣨�ӿڣ�	| �����ݴ򽻵������������ݿ������Ҳ�������ļ���д������������redis�����������֮�����ݲ����йصĶ��������Ҳ���˽���dal�������ݳ־ò㶼�����˼��Ϊʲôû| | | ��daoImpl����Ϊ�����õ���mybatis�����Կ���ֱ���������ļ���ʵ�ֽӿڵ�ÿ��������
| entity	| ʵ����	| һ�������ݿ�ı����Ӧ����װdao��ȡ����������Ϊһ������Ҳ�������ǳ�˵��pojo��һ��ֻ��dao����service��֮�䴫�䡣
| dto	| ���ݴ����	| ��ѧ��ܵ��˿��ܲ����������ʲô�ã���ʵ��������service����web��֮�䴫�䣬Ϊʲô��ֱ����entity��pojo������ʵ��ʵ�ʿ����з��֣��ܶ�ʱ��һ��entity�������������ǵ�ҵ�����󣬿��ܳ��ָ��û�����Ϣʮ��֮�࣬��ʱ�������dto��Ҳ�൱��vo����סһ����Ҫ�����������entity���棬��Ӧ�Һ���
| service	| ҵ���߼����ӿڣ�| 	д���ǵ�ҵ���߼���Ҳ���˽�bll�������ҵ��ӿ�ʱ��Ӧ��վ�ڡ�ʹ���ߡ��ĽǶȡ����Ҫ����Ϊʲô����û��ʾ��IDE��Ƥ��Ҳ����û�취~
| serviceImpl	| ҵ���߼���ʵ�֣�	| ʵ������ҵ��ӿڣ�һ�����������д�����ûʲô��˵�ġ�
| web	| ������	| springmvc���������﷢�����õģ�һ���˽���controller���������൱��struts�е�action��