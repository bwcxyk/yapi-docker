# YApi-docker

在 [Docker](https://www.docker.com/) 中运行 [YApi](https://github.com/YMFE/yapi)。

使用方法

```bash
docker run -d -e YAPI_DB_SERVERNAME=192.168.1.1 -e YAPI_MAIL_ENABLE=false -p 3000:3000 yaokun/yapi:latest
```

默认管理员账户为 admin@bwcxtech.com

默认密码 ymfe.org

通过环境变量配置的选项会覆盖通过 `config.json` 或者 `config.js` 配置的选项。

#### 基础配置

| 环境变量名称       | 类型   | 说明               | 示例               |
| ------------------ | ------ | ------------------ | ------------------ |
| YAPI_SERVER_PORT   | number | YAPI服务端口       | 3000               |
| YAPI_ADMIN_ACCOUNT | string | 管理员账号（邮箱） | admin@bwcxtech.com |

#### 数据库配置

| 环境变量名称        | 类型   | 说明                        | 示例       |
| ------------------- | ------ | --------------------------- | ---------- |
| YAPI_DB_SERVERNAME  | string | MongoDB 服务地址            | yapi-mongo |
| YAPI_DB_PORT        | number | MongoDB 服务端口            | 27017      |
| YAPI_DB_DATABASE    | string | 使用的 MongoDB 数据库       | yapi       |
| YAPI_DB_USER        | string | 登录 MongoDB 服务的用户名   | yapi       |
| YAPI_DB_PASS        | string | 登录 MongoDB 服务的用户密码 | yapi       |
| YAPI_DB_AUTH_SOURCE | string | MongoDB 身份认证所用库      | admin      |

#### 邮件配置

| 环境变量名称        | 类型    | 说明                   | 示例               |
| ------------------- | ------- | ---------------------- | ------------------ |
| YAPI_MAIL_ENABLE    | boolean | 是否启用               | true               |
| YAPI_MAIL_HOST      | string  | 邮件服务地址           | smtp.163.com       |
| YAPI_MAIL_PORT      | number  | 邮件服务端口           | 465                |
| YAPI_MAIL_FROM      | string  | 发送人邮箱             | admin@bwcxtech.com |
| YAPI_MAIL_AUTH_USER | string  | 登录邮件服务的用户名   | admin@bwcxtech.com |
| YAPI_MAIL_AUTH_PASS | string  | 登录邮件服务的用户密码 | 123456             |