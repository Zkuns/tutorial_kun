因为公司的账号权限有限制, 无法连接serverless，向chin申请权限来不及，所以就通过自己的账号做的，没有使用 lb，而是使用的 AWS 的API来做的。

### 生成的访问链接
https://yfq69q2ada.execute-api.us-east-1.amazonaws.com/dev/campaign?client_id=1
数据库只有 client_id 为1，2的数据
![image](https://user-images.githubusercontent.com/8684193/73043705-48304080-3ea1-11ea-83a2-cfffc3b7971f.png)


### 感受
  确很方便，给它权限，简单配置就能自动创建好api, lambda, dynamoDB, 可以通过Git来进行配置的版本控制，不用管理服务器，数据库。但是这里只是简单的作业，如果要使用起来应该还有一些细节方面需要了解，比如我这里的数据库权限管理调整了好多次。

### 遇到的坑：
  数据库表生成后无法修改，需要设定新的表名，那如何进行老数据迁移
