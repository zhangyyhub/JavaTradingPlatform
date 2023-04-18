# 校园交易平台

# 1、项目结构

```bash
$ tree
.
├── boot-base_20210428215200.sql     # Initialize the sql file.
├── campus-market-1.0-SNAPSHOT.jar   # App jar package.
├── config                           # Config dir.
│   ├── application-dev.properties
│   └── application.properties
├── log.file                         # Log file.
├── start.sh                         # App start script.
└── stop.sh                          # App stop script.
```



# 2、项目部署

## 2.1 初始化数据库

```sql
MariaDB [(none)]> create database campus_market character set utf8;
MariaDB [(none)]> use campus_market;
MariaDB [(none)]> source boot-base_20210428215200.sql;
MariaDB [(none)]> exit
Bye
```

## 2.2 修改配置文件

```bash
$ vim config/application-dev.properties
spring.datasource.username=******
spring.datasource.password=******
```

## 2.3 启动停止服务

```bash
$ bash start.sh
 bash stop.sh
```

