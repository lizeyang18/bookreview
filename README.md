# &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;国科大高级软件工程大作业
## 一、项目介绍
项目名称：果壳书评网  
项目地址：[https://salty-citadel-37632.herokuapp.com/](https://salty-citadel-37632.herokuapp.com/)  
项目成员：  
&emsp;&emsp;组长：王常辉  
&emsp;&emsp;组员：李泽阳、周正、杨彬彬、马荣杰  
项目简介：  
- 这是一个轻量级的书评网站  
- 用户分为游客和注册用户  
- 游客只能查看书籍以及书的评论与已有评分  
- 登录/注册后的用户可对书进行评论以及添加一些自己喜欢的书  
- 用户可以对自己的评论与评分增删改查  
- 一本书的推荐度是该书所有评分的平均值  
- 一本书显示的内容主要有作者、推荐度、简介等  
## 二、项目开发
托管地址（Github）：[https://github.com/lizeyang18/bookreview](https://github.com/lizeyang18/bookreview)  
测试用例：  
包含controllers、files、integration、mailers、models等测试，测试文件位于/test目录下  
![](https://github.com/lizeyang18/bookreview/blob/master/public/0.png)  
<b>UserStory:</b>  
1.作为一个游客/用户，我想要看到一个整洁大方的页面，以便于快速查看到自己需要的网站功能  
2.作为一个游客，我想要注册一个新的账户，以便后续登录和查看自己的书籍信息  
3.作为一个用户，我想要按照某一本的书名进行搜索，以便于我可以快速查看到自己想要看的书籍  
4.作为一个用户，我想要按照书的类别进行筛选，以便于我可以快速找到感兴趣方向的书籍  
5.作为一个用户，我想要查看图书的详细信息，以便于我了解自己是否适合看这本书  
6.作为一个用户，我想要对自己的书籍进行增删改操作，以便于及时管理和更新自己的书籍  
7.作为一个用户，我想要给我已经读过的书一个客观的评论和评级，以便于所有人能够更好的了解这本书  
## 三、项目展示
1.注册/登录模块
![](https://github.com/lizeyang18/bookreview/blob/master/public/1.png)
2.系统主界面
![](https://github.com/lizeyang18/bookreview/blob/master/public/2.png)
3.添加书籍
![](https://github.com/lizeyang18/bookreview/blob/master/public/3.png)
4.编辑书籍
![](https://github.com/lizeyang18/bookreview/blob/master/public/4.png)
5.添加评论
![](https://github.com/lizeyang18/bookreview/blob/master/public/5.png)
6.评论显示
![](https://github.com/lizeyang18/bookreview/blob/master/public/6.png)
7.搜索模块
![](https://github.com/lizeyang18/bookreview/blob/master/public/7.png)
8.书籍分类
![](https://github.com/lizeyang18/bookreview/blob/master/public/8.png)
## 四、项目使用
1.在C9工作区新建一个工作区间  
```
$ gem install rails
$ git clone git@github.com:lizeyang18/bookreview.git
$ cd bookreview
$ rvm install ruby-2.5.0  //安装Ruby
$ bundle install 
$ sudo apt-get update   //这行与下一行安装imagemagick插件
$ sudo apt-get install imagemagick --fix-missing 
$ rails server -b $IP -p $PORT  //即可运行
```
2.账号  
用户名：`278845421@qq.com`  
密码：`123456`  
3.部署到heroku  
通过上述C9的实施成功后，就可以将项目部署到heroku上  
```
$ heroku login
$ heroku create
$ git push heroku master
```
问题1：实施到这一步发现报错：预编译失败  
解决：  
```
$ rm -rf ~/.bundle/ ~/.gem/ .bundle/ Gemfile.lock
$ bundle install
$ git add .
$ git commit -m "commiting Gemfile.lock"
$ git push heroku master -f
```
问题2：push到heroku时可能会有`You must use Bundler 2 or greater with this lockfile`问题  
再运行：  
```
$ heroku buildpacks:set https://github.com/bundler/heroku-buildpack-bundler2
$ git add .
$ git commit -m "commiting Gemfile.lock"
$ git push heroku master -f
```
如果没问题就不用运行上面命令  
问题3：部署到heroku上发现`assets/images`目录下的显示推荐度的星星图片丢失  
解决：  
将`config/environments/production.rb`里的`config.assets.compile = false`改成`config.assets.compile = true`
```
$ rake assets:precompile  //先在本地预编译静态资源
$ git add .
$ git commit -m "commiting Gemfile.lock"
$ git push heroku master -f
```
<b>存在的问题</b>  
&emsp;&emsp;由于使用的是heroku免费用户，再重启heroku时，存储在`public/system`下的图片会被heroku自动删除，使得上传网站的图片丢失不显示  
<b>待完善</b>  
&emsp;&emsp;录入大量用户实现书的智能推荐  
&emsp;&emsp;将用户上传的图片不存入`public/system`，而是存入`assets/images`目录下，防止被heroku删除  
## 五、项目分工
1.需求分析：杨彬彬、马荣杰  
2.数据库设计：李泽阳、王常辉  
3.MVC模式View：李泽阳、马荣杰（结对编程）  
4.MVC模式Controller:周正  
5.MVC模式Model:王常辉  
6.bug修复及代码修改：王常辉、李泽阳、周正  
7.测试：杨彬彬  
8.报告：王常辉、李泽阳、周正  
