# 植物商店购物网站（Plant Shop）

2019 年达内「Java Web 全栈开发」培训期间的团队实战项目（2019.07 – 2019.08），一个完整的电商购物网站：商品浏览与筛选、购物车、收藏夹、订单结算、用户注册登录。

> 本仓库为学习时期的团队项目存档，仅作学习经历展示。数据库连接参数已替换为占位符。

## 技术栈

- **后端**：Java Servlet + JSP，MVC 三层架构（Servlet 控制器 / DAO 数据访问 / Entity 实体）
- **数据库**：MySQL，六张核心表（用户 / 商品 / 购物车 / 收藏 / 订单 / 收货地址），SQL 脚本见 `database/`
- **前端**：Bootstrap 布局 + jQuery 插件生态（Isotope 商品筛选、Owl Carousel 轮播、EasyZoom 放大镜）
- **部署**：Tomcat，配置 HTTPS

## 项目结构

```
mengxin/
├── src/xtu/edu/
│   ├── Servlet/    # 控制器层（AddToCart / DeleteFromCart / UserCart 等）
│   ├── Dao/        # 数据访问层（CartDao / FlowerDao / UserDao / OrderVoDao 等）
│   └── Entity/     # 实体层（User / Flower / Cart / Collection / OrderVo）
└── WebContent/     # JSP 页面与前端资源（cart / shop / detail / login-register 等）
database/
└── flower_store_db.sql   # 建表与测试数据脚本
```

## 本人负责模块

- **购物车模块全链路**：前端 jQuery 交互 → AddToCart / DeleteFromCart 等 Servlet 控制器 → Cart×Flower 视图对象聚合查询 → 实时结算计算 → Jackson 序列化 JSON 返回前端
- 数据库表结构设计与 DAO 层实现

## 本地运行

1. 导入 `database/flower_store_db.sql` 到 MySQL
2. 在 `DBUtil` 中配置本地 MySQL 账号密码（代码中的连接参数为占位符）
3. 用 Eclipse / IDEA 导入 `mengxin` 工程（Web Project），部署到 Tomcat 启动
4. 访问 `http://localhost:8080/mengxin/page/index.jsp`

## 说明

- 项目原始素材（商品图片等）未包含在仓库中
- 团队实战项目：本人负责购物车模块与部分数据层设计
