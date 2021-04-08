# 概念
NIFI 用来处理数据的分发 BS结构的图形化控制工具

* 高可用
* 高性能 高并发
* 错误纠察方便
* 快速kaifa
* 兼容各种数据格式
* 安全性
* 方便迁移

# NIFI核心概念
* FLow FIle 信息包 系统中移动的每个对象 NIFI会记录它的一个属性键值对和0或多个字节的内容 attribute content
* FLOW FILE PROCESSEOR 核心组件 处理器对ff进行处理 路由或者转换各种操作
* Connection 连接处理器 连接不同的processor 是一个队列的角色 并允许各种进程以不同的速率进行交互，并且可以在负载上设置上限，从而进行背压
* Flow controller 代理器角色 调度促进处理器文件的交换
* Processor group 处理器组 

## 优点
* 可视化
* 吞吐量大
* 高并发
* 内聚 松耦合
* 支持背压 和压力释放
* 错误处理直观 精确

# NIFI 架构
![Alt text](./share/photos/1.png?raw=true "Title")
* webserver 用来承载NIFI 基于http和API
* Flow Controller 操作的核心 为将要运行的组件提供线程和管理调度 
* Extension 各种类型的NIFI扩展 NIFI 扩展也是在JVM里面执行的
* Flowfile repo 是用来存放ff的状态 是可插拔的，默认实现是使用write Ahead Log技术
* content repo 内容存储库 存储ff内容 可插拔，默认也是相当简单 它将数据块存储在文件系统中，可以指定多个
  文件系统存储位置，以便获得不同的物理分区
* Provenance repo 源头存储库 存储所有事件数据的地方，也是可插拔的，默认实现是使用一个和多个物理盘卷
  在每个位置的事件数据都是被索引并可搜索的


# NIFI 集群架构
![Alt text](./share/photos/2.png?raw=true "Title")