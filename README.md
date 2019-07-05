## cut-hand电商web项目环境说明

1. 本项目ide为 IntelliJ IDEA 2019.1.3 x64
2. JDK版本为1.8
3. 服务器为Tomcat 9
4. 使用数据库为MySQL
5. 要运行本项目，ide需要支持java8 新特性，需要配置相关数据库文件：（1）在resources文件夹下的 jdbc.properties 下修改对应的本地MySQL的用户名和密码，（2）将项目中所带的sql文件导入本地的MySQL数据库。
6. 本项目所引用的jar包，都是通过Maven引入，推荐运行本项目时的为maven项目，这样可以实现包的自动导入。