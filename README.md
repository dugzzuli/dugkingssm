# 关于
整合SSM框架（SpringMVC + Spring + MyBatis），适合刚接触spring的童鞋，需要有servlet和jsp基础。学习完SSM整合后可以应付开发工作，但是建议继续深究，学习spring boot，spring cloud等技术，让开发效率更上一层楼。


1. 2018/08/04 SpringMVC + Spring + MyBatis 配置完成

# 博客
http://www.cnblogs.com/MyKingDragon/

# 环境
- jdk 1.8
- tomcat 8.5


# 文件名作用
# src	
- 根目录，没什么好说的，下面有main和test。
# main
- 主要目录，可以放java代码和一些资源文件。
# java
- 存放我们的java代码，这个文件夹要使用Build Path -> Use as Source Folder，这样看包结构会方便很多，新建的包就相当于在这里新建文件夹咯。
# resources
- 存放资源文件，譬如各种的spring，mybatis，log配置文件。
# mapper
- 存放dao中每个方法对应的sql，在这里配置，无需写daoImpl。
# spring
- 这里当然是存放spring相关的配置文件，有dao service web三层。
# sql
其实这个可以没有，但是为了项目完整性还是加上吧。
# webapp
- 这个貌似是最熟悉的目录了，用来存放我们前端的静态资源，如jsp js css。
# resources
- 这里的资源是指项目的静态资源，如js css images等。
# WEB-INF
- 很重要的一个目录，外部浏览器无法访问，只有羡慕内部才能访问，可以把jsp放在这里，另外就是web.xml了。你可能有疑问了，为什么上面java中的resources里面的配置文件不妨在这里，那么是不是会被外部窃取到？你想太多了，部署时候基本上只有webapp里的会直接输出到根目录，其他都会放入WEB-INF里面，项目内部依然可以使用classpath:XXX来访问，好像IDE里可以设置部署输出目录，这里扯远了~
# test
- 这里是测试分支。
# java
- 测试java代码，应遵循包名相同的原则，这个文件夹同样要使用Build Path -> Use as Source Folder，这样看包结构会方便很多。
# resources
- 没什么好说的，好像也很少用到，但这个是maven的规范。