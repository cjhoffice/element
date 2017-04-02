#!/bin/bash

#安装npm包的时候需要额外补上两个包的安装配置才能正常编译
#npm install
#npm install postcss-loader@1.0.0 --save-dev
#npm install lerna@2.0.0-beta.32 --save-dev

#编译发布最终生成到lib目录下
#npm run dist:all
npm run dist

#拷贝输出包到工程的npm包目录下进行发布之(临时处理之=>最终的方案集成到产品中需要进行独立子仓库的管理之可以直接调试业务逻辑无关的组件库的源代码)
rm -rf ../node_modules/element-ui/lib
cp -rf lib ../node_modules/element-ui/

#如何使用element的ui组件文档(饿了么自己基于vue写的一个前端文档配合github进行发布管理之进行版本管理)
#./node_modules/.bin/cooking build -c build/cooking.demo.js
#调试文档工程
#./node_modules/.bin/cooking watch -c build/cooking.demo.js

# 实时开发调试element组件库源代码(基于demo文档的工程)
# npm run dev

#@TODO 与懒财项目的整合(发布编译/源码subtree管理/定期bug同步合并),整理封装实现的组件文档方便团队后端程序员内部开发使用,专业前端入职后完善组件以及界面交互设计和文档即可.
#@TODO 进一步完善饿了么的文档框架将后端接口文档也整合进来加上mock机制以及后端调试机制, 后续进一步考虑自动化测试工程进行整合之.
#@TODO 进一步将vuejs的源码也整合到底层框架上,调试错误以及深入理解进行公司业务逻辑一些特殊的定制扩展一些功能.
#@TODO 大量阅读参考vuejs的相关开源代码设计经验,与前端开发人员共同优化完善公司前端组件架构,持续提升公司业务应用的开发效率,并与社区团队持续互动维护好底层框架借力.
#@TODO 前端框架的持续优化完善,与后端耦合层的持续扩展,完善管理员后台框架的相关通用功能点支持后端快速开发业务成型.
