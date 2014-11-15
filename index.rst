软件构建实践分享
================

.. include:: <s5defs.txt>

:Author: 郑堃
:Date: 2014.11.15

自我介绍
--------

.. class:: incremental

   * 程序员 `->` `Web Developer`
   * 知道创宇 `->` `更好更安全的互联网`
   * Blog -> `zhengkun.info <http://zhengkun.info/>`_
   * Weibo -> `@阿kun太受欢迎了 <http://weibo.com/kvntalk/>`_

概念同步
--------

.. class:: incremental


   * 构建 `|` `编程`
   * 构建的重点 -> `编码和调试`
   * 一个高质量的软件构建，周边要涵盖各种东西 `->` `很烦！`
   * 烦！那为啥还要有？`能更集中精力去编码和调试！`

概念同步 - 软件开发立体视图
---------------------------

.. class:: incremental

   .. image:: _static/software_development.png

内容提纲
--------

.. class:: incremental

   * Python 用在了哪？
   * 代码管理的实践
   * 自动化测试的实践
   * 文档的实践
   * code review 的实践
   * 包管理/构建发布的实践
   * 持续集成的实践
   * 持续发布？
   * 团队协作工具的实践
   * 汇总

Python 用在了哪？
-----------------

.. class:: incremental

   * Web 开发
   * 安全检测、爬虫、任务队列调度等后台程序
   * 安全研究的各种核心技术
   * 日常运维的脚本
   * 等等

代码管理的实践 - 工具
---------------------

.. class:: incremental

   .. image:: _static/old_3_tools.png
   .. image:: _static/new_3_tools.png

代码管理的实践 - 经验
---------------------

.. class:: incremental

   * 版本控制是核心

     + `尽可能版本化所有的东西` `->` `代码、文档等`
     + `尽可能方便团队协作` `->` `GitLab`
     + `尽可能详细记录历史` `->` `commit log 规范`
     + `尽可能多的记录软件开发中产生的常见行为` `->` `测试行为`

   * 约定个 Git 分支协作方式
   * 代码发布 `->` `包管理/构建发布的实践`

代码管理的实践 - Git 分支协作方式
---------------------------------

.. container:: animation

   .. image:: _static/Git_1.png
      :class: hidden slide-display

   .. class:: incremental hidden slide-display

      .. image:: _static/Git_2.png
      .. image:: _static/Git_3.png
      .. image:: _static/Git_3_2.png
      .. image:: _static/Git_4.png
      .. image:: _static/Git_5.png
      .. image:: _static/Git_6.png
      .. image:: _static/Git_7.png
      .. image:: _static/Git_8.png
      .. image:: _static/Git_9.png
      .. image:: _static/Git_10.png
      .. image:: _static/Git_11.png

   .. image:: _static/Git_full.png
      :class: incremental


自动化测试的实践 - Why?
-----------------------

.. class:: incremental

   .. image:: _static/auto_test.png

自动化测试的实践 - 工具
-----------------------

.. class:: incremental

   * unittest / unittest2 / django.test 等测试框架 `->` `简化测试代码`
   * nose / django_nose 的工具类库 `->` `方便运行管理测试用例运行`
   * httpretty 等各种 mock 和 fake `->` `方便模拟各种网络请求、文件、数据库等操作`
   * coverage `->` `方便统计测试覆盖率`
   * Selenium `->` `测试团队用的较多，减少人工测试的工作量`

自动化测试的实践 - 示例图
-------------------------

.. class:: incremental

   .. image:: _static/unittest.png


自动化测试的实践 - 经验
-----------------------

.. class:: incremental

   * 经历过的阶段：`无意识` `->` `混沌` `->` `秩序`
   * 测试驱动开发（TDD），更好的解释是：`更重视设计的驱动开发`
   * 切忌极端

     + `0% <-> 100%` `->` `只证明执行了那行代码，而不能证明测试了所有条件`
     + `“TDD 狂热者”` `->` `忘了目的或结果是产出功能，测试只是过程`
     + `测试代码不好写怎么办？` `->` `有时候的确是接口设计不合理，但不要为了测试而去打破原本很好的接口设计`

文档的实践 - 工具
-----------------

.. container:: animation

   .. image:: _static/ms-word.png
      :class: hidden slide-display

   .. class:: incremental hidden slide-display

      .. image:: _static/ms-word-no.png
      .. image:: _static/rst_editor_qt1.png

   .. image:: _static/rst_editor_qt1-yes.png
      :class: incremental

文档的实践 - 经验
-----------------

.. class:: incremental

   * Python Doc | reStructuredText | MarkDown
   * 推荐：rst -> Sphinx doc
   * 只写实用的文档，尽量用高质量的代码来替代文档
   * 代码就是文档，文档就是代码，不要分家，不要把文档看作软件开发中的二等公民
   * 一般包括：

     + `README` `项目/产品是干什么的` `/` `如何安装部署` `/` `如何参与`
     + `构架设计或架构设计或概要设计`
     + `重要/核心/复杂模块的设计` `/` `API/接口文档` `/` `数据建模（数据库为中心的项目）`
     + `TODO/路线图` `/` `Changelog` `/` `词汇表` `/` `FAQ`

code review 的实践
------------------

.. class:: incremental

   * 工具：`人肉` `->` `Trac 插件` `->` `GitLab 原生`
   * 吐槽 `->` `多多鼓励`
   * 目的 `->` `团队成员代码水平、风格趋于接近`
   * 方式：1 自审、p2p 互相、2-3 单向、>3 展示、其它
   * 大多数的 Bug 是消灭在这个阶段的
   * 看到一个统计数据：`“...在引入代码评审之前，55%的“单行”维护代码改动都是错误的...”`

code review 的实践 - 示例图
---------------------------

.. class:: incremental

   .. image:: _static/code_review.png

包管理/构建发布的实践
---------------------

.. class:: incremental

   * easy_install / pip / setup.py
   * PYPI -> devpi
   * fabric / fabtools
   * Makefile
   * Ubuntu deb
   * 有的直接 ISO 安装镜像

包管理/构建发布的实践 - 示例图
------------------------------

.. class:: incremental

   .. image:: _static/PYPI.png

持续集成的实践 - 工具
---------------------

.. class:: incremental

   * Bitten - bitten.xml
   * GitLab CI - gitlab-ci.sh
   * Jenkins

持续集成的实践 - 配置/脚本截图
------------------------------

.. container:: animation

   .. image:: _static/bitten.png
      :class: hidden slide-display

   .. image:: _static/gitlab-ci.png
      :class: incremental

持续集成的实践 - 经验
---------------------

.. class:: incremental

   * 获取代码
   * 安装必须的软件包
   * 自动运行测试，所以写测试代码的实践算是很重要的一步
   * 代码静态检查
   * 根据情况：生成文档等额外需要增加的操作
   * 注意：CI 运行结果失败，要有第一时间处理的意识

持续集成的实践 - CI 截图
------------------------

.. container:: animation

   .. image:: _static/CI-show-gitlab.png

持续发布？
----------

.. class:: incremental

   * TBD
   * Web Hook(tag) -> 升级包 or ISO 安装镜像
   * 线上服务 or 升级站点 or 客户
   * 灰度发布

团队协作工具的实践
------------------

.. class:: incremental

   * 三件套：Git + GitLab + GitLab CI
   * 加强套装：+ Trello + Slack
   * 别忘了：`白板 + 吼！`

擅用而不滥用工具
----------------

.. class:: incremental

   * 不要沦为工具党！
   * 要理解工具设计者背后的思想，要解决什么问题
   * 不知道怎么入手，人肉方式也不错！
   * 不要被工具搞死！例如：白纸或白板也不错

     + 人的重要性
     + 类似，不要被各种方法论搞死
     + 编码和调试，还是由人来干的！

汇总 - first commit
-------------------

.. class:: incremental

   * 用项目模板初始化项目

   ::

      $ cookiecutter git@gitlab.example.com/public/pyproject.git
      $ cd some
      $ virtualenv .
      $ source bin/activate
      $ make
      $ git init
      $ git add XXX
      $ git commit
      $ git remote add git@gitlab.example.com/private/some.git
      $ git push origin master

汇总 - 项目模板说明
-------------------

.. class:: incremental

   .. image:: _static/tree.png


汇总 - 做好配置管理工作
-----------------------

.. class:: incremental

   * 代码未动，CI 先行
   * 优先考虑安装部署脚本 `->` `发布一个空壳项目`
   * 尽可能多的记录软件开发中产生的常见行为

汇总 - 神奇的黑盒
-----------------

.. container:: animation

   .. image:: _static/start_black.png
      :class: hidden slide-display

   .. image:: _static/start.png
      :class: incremental

汇总 - 神奇的黑盒
-----------------

.. class:: incremental

   * 程序员的世界 - 编码/调试
   * “代码”为王
   * 设计！设计！设计！`Ship! Ship! Ship!`
   * 以最少的代码实现最多的功能

汇总 - Ship it!
---------------

.. class:: incremental

   * 比如：发布类库到私有的 PYPI

   ::

      $ make sdist

汇总 - 现实是复杂的
-------------------

.. class:: incremental

   * 上述案例也就是个简化的项目，或者说是一个类库级别的项目
   * 现实情况往往是复杂的天灾人祸
   * 项目规模大，单一的项目模板必然不适用，比如：多语言的项目
   * 大项目必然会拆分成各个小项目，各个项目集成起来必然复杂
   * 所谓的一键发布脚本，需要持续维护，可能逻辑随着项目复杂度上升，也会挺复杂
   * 那个所谓神奇的黑盒，对程序员的技能要求其实挺高的
   * 情况这么复杂怎么办？招牛X的人来帮你来简化问题，解决问题吧！
   * 上述草草描述的很多实践还有非常多的改进空间

回顾
----

.. class:: incremental

   * 分享的各种实践目的是为了让程序员能更专注于具体的编码和调试
   * 尽可能多的记录软件开发中产生的常见行为
   * 一句有用的废话：`具体问题具体分析`

     + `能做到这个程度，说明经验积累足够多了，手头工具也积累足够多了`
     + `条条道路通罗马，但往往建立罗马的就一条路`

参考
----

* http://www.oschina.net/translate/open-sourcing-a-python-project-the-right-way
* http://www.oschina.net/translate/a-successful-git-branching-model
* 《代码大全》 P5

问答
----

.. class:: incremental

   ? & !

结束
----

.. class:: incremental

   谢谢！
