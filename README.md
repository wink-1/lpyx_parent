# 良品优选后台管理系统项目

## 项目概述

良品优选后台管理系统是一个前后端分离的综合性项目，包含后端服务与前端界面，旨在提供一套完整的系统解决方案。后端基于 Spring Boot 构建，提供核心业务逻辑与数据处理能力；前端采用 Vue3 生态，打造现代化的用户交互界面。项目结构清晰，模块划分合理，便于维护与扩展。


## 技术栈

### 后端技术
- **核心框架**：Spring Boot 3.5.3
- **ORM 框架**：MyBatis 3.0.3
- **数据库**：MySQL 8.0.33
- **缓存系统**：Redis 
  - 用途：存储用户登录令牌（Token）、验证码等临时数据，通过 `RedisTemplate` 实现高效的缓存操作，提升系统响应速度。
- **对象存储**：MinIO 
  - 用途：处理文件上传存储（如商品图片），通过自定义 `MinioProperties` 配置连接信息，实现图片自动压缩、格式处理及分布式存储。
- **工具库**：
  - Lombok 1.18.34（简化 Java 代码）
  - FastJSON 2.0.3（JSON 序列化/反序列化）
  - Hutool（工具类库，用于日期处理、加密等）
- **构建工具**：Maven


### 前端技术（lpyx-ui）
- **核心框架**：Vue 3
- **UI 组件库**：Element Plus
- **构建工具**：Vite
- **状态管理**：Pinia
- **路由管理**：Vue Router 4
- **HTTP 客户端**：Axios
- **图表库**：ECharts
- **代码规范**：ESLint + Prettier

## 核心功能模块

1. **用户认证与权限**
   - 基于 Token 的登录验证，通过 `LoginAuthInterceptor` 拦截请求验证身份
   - Redis 存储登录状态，自动续期令牌有效期（30 分钟）
   - 角色分配功能（`SysUserServiceImpl` 中的 `doAssign` 方法）

2. **文件上传与存储**
   - 集成 MinIO 实现分布式文件存储，自动创建存储桶（Bucket）
   - 图片处理：自动压缩为 50x50 尺寸，支持 PNG、GIF、WebP 等格式（`FileUploadServiceImpl`）
   - 按日期目录结构化存储文件，生成唯一文件名避免冲突

3. **数据持久化**
   - MySQL 存储业务数据，通过 MyBatis 映射数据库操作
   - 提供用户管理、订单管理等基础 CRUD 功能（参考 `sys_user` 表及相关 Mapper）

## 模块构成

| 模块名称         | 说明                                                                 |
|------------------|----------------------------------------------------------------------|
| `lpyx-parent`    | 父工程，统一管理依赖版本与模块聚合                                   |
| `lpyx-common`    | 通用模块，包含工具类、公共服务等                                     |
| `lpyx-model`     | 数据模型模块，定义实体类、DTO等数据结构                              |
| `lpyx-manager`   | 核心业务模块，实现后端业务逻辑与接口                                 |
| `lpyx-ui`        | 前端模块，基于Vue3+ElementPlus开发的用户界面                         |


## 环境准备

### 后端环境
1. JDK 21 及以上
2. Maven 3.6+
3. MySQL 8.0.33 及以上
4. Redis 6.0+（默认配置：`localhost:6379`）
5. MinIO 服务（默认配置：`http://127.0.0.1:9000`，需提前创建 `lpyx-bucket` 存储桶）


### 前端环境
1. Node.js 14+ 及 npm 6+
2. 建议使用 Chrome 浏览器开发调试


## 快速开始

### 1. 克隆项目
```bash
git clone <项目仓库地址>
cd lpyx-parent
```


### 2. 后端部署
1. 配置数据库：修改 `lpyx-manager` 模块中的数据库连接信息（如 `application.yml`）
2. 初始化数据库：执行项目中的 SQL 脚本（若有）
3. 构建项目：
   ```bash
   mvn clean package -Dmaven.test.skip=true
   ```
4. 启动服务：
   ```bash
   java -jar lpyx-manager/target/lpyx-manager-1.0-SNAPSHOT.jar
   ```


### 3. 前端部署（lpyx-ui）
1. 进入前端目录：
   ```bash
   cd lpyx-ui
   ```
2. 安装依赖：
   ```bash
   npm install
   # 或使用淘宝镜像加速
   npm install --registry=https://registry.npm.taobao.org
   ```
3. 启动开发环境：
   ```bash
   npm run dev
   ```
4. 构建生产环境：
   ```bash
   npm run build
   ```
   构建产物位于 `dist` 目录，可部署至 Nginx 等静态资源服务器。


## 项目结构（简化）

```
lpyx-parent/
├── lpyx-common/           # 通用模块
├── lpyx-model/            # 数据模型模块
├── lpyx-manager/          # 业务核心模块
├── lpyx-ui/               # 前端模块
│   ├── src/
│   │   ├── assets/        # 静态资源
│   │   ├── components/    # 自定义组件
│   │   ├── router/        # 路由配置
│   │   ├── pinia/         # 状态管理
│   │   ├── views/         # 页面视图
│   │   └── main.js        # 入口文件
│   ├── vite.config.js     # Vite配置
│   └── package.json       # 依赖配置
├── pom.xml                # 父工程依赖
└── .gitignore             # Git忽略配置
```


## 贡献指南

1. 提交 Issue：通过 [GitHub Issues](https://github.com/huzhushan/vue3-element-admin/issues) 反馈问题或提出建议
2. 提交代码：
   - Fork 项目并创建分支：`git checkout -b feat/xxx` 或 `git checkout -b fix/xxx`
   - 提交规范：遵循 [Angular 提交规范](https://github.com/conventional-changelog/conventional-changelog/tree/master/packages/conventional-changelog-angular)，例如：
     - `feat(模块): 新增xxx功能`
     - `fix(模块): 修复xxx问题`
   - 推送分支并提交 Pull Request


## 开源协议

本项目基于 [MIT 协议](./lpyx-ui/LICENSE) 开源，详情参见 LICENSE 文件。


