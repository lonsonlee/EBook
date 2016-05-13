<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>jQuery展开折叠侧栏导航菜单</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	font-size: 12px;
	font-family: "Microsoft Yahei", Verdana, Arial, Helvetica, sans-serif
}
.leftMenu {
	min-width:220px;
    width:268px;
	margin:40px auto 0 auto;
}
.menu {
	border: #bdd7f2 1px solid;
	border-top: #0080c4 4px solid;
	border-bottom: #0080c4 4px solid;
	background: #f4f9ff url(../jQuery%E5%B1%95%E5%BC%80%E6%8A%98%E5%8F%A0%E4%BE%A7%E6%A0%8F%E5%AF%BC%E8%88%AA%E8%8F%9C%E5%8D%95/images/leftdhbg.jpg) repeat-y right;
	margin-left: 10px;
}
.menu .ListTitle {
	border-bottom: 1px #98c9ee solid;
	display: block;
	text-align: center;
	/*position: relative;*/
	height: 38px;
	line-height: 38px;
	cursor: pointer;
	/*+min-width:220px;*/

	+width:100%;
}
.ListTitlePanel {
	position: relative;
}
.leftbgbt {
	position: absolute;
	background: url(../jQuery%E5%B1%95%E5%BC%80%E6%8A%98%E5%8F%A0%E4%BE%A7%E6%A0%8F%E5%AF%BC%E8%88%AA%E8%8F%9C%E5%8D%95/images/leftbgbt.jpg) no-repeat;
	width: 11px;
	height: 52px;
	left: -11px;
	top: -4px;
}
/*.leftbgbt {
	float:left;
	background: url(images/leftbgbt.jpg) no-repeat;
	width: 11px;
	height: 52px;
	left: 0px;
	top: 0px;
	zoom:1;
	z-index:200px;
}
*/.leftbgbt2 {
	position: absolute;
	background: url(../jQuery%E5%B1%95%E5%BC%80%E6%8A%98%E5%8F%A0%E4%BE%A7%E6%A0%8F%E5%AF%BC%E8%88%AA%E8%8F%9C%E5%8D%95/images/leftbgbt2.jpg) no-repeat;
	width: 11px;
	height: 48px;
	left: -11px;
	top: -1px;
}
.menuList {
	display: block;
	height: auto;
}
.menuList div {
	height: 28px;
	line-height: 24px;
	border-bottom: 1px #98c9ee dotted;
}
.menuList div a {
	display: block;
	background: #fff;
	line-height: 28px;
	height: 28px;
	text-align: center;
	color: #185697;
	text-decoration: none;
}
.menuList div a:hover {
	color: #f30;
	background: #0080c4;
	color: #fff;
}
</style>

<script type="text/javascript" src="../侧栏导航菜单/js/jquery-1.5.1.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var menuParent = $('.menu > .ListTitlePanel > div');//获取menu下的父层的DIV
	var menuList = $('.menuList');
	$('.menu > .menuParent > .ListTitlePanel > .ListTitle').each(function(i) {//获取列表的大标题并遍历
		$(this).click(function(){
			if($(menuList[i]).css('display') == 'none'){
				$(menuList[i]).slideDown(300);
			}
			else{
				$(menuList[i]).slideUp(300);
			}
		});
	});
});
</script>

</head>

<body>

<div class="leftMenu">
	<div class="menu">
		<div class="menuParent">
			<div class="ListTitlePanel">
				<div class="ListTitle">
					<strong>人文社科</strong>
					<div class="leftbgbt"> </div>
				</div>
			</div>
			<div class="menuList">
				<div> <a href="#">历史</a></div>
				<div> <a href="#">哲学宗教 </a> </div>
				<div> <a href="#">政治军事</a></div>
                <div> <a href="#">社会文化</a></div>
			</div>
		</div>
		<div class="menuParent">
			<div class="ListTitlePanel">
				<div class="ListTitle">
					<strong>教育</strong>
					<div class="leftbgbt2"> </div>
				</div>
			</div>
			<div class="menuList">
				<div> <a href="#">外语学习</a></div>
				<div> <a href="#">中小学教辅</a></div>
				<div> <a href="#">专业辞典</a></div>
				<div> <a href="#">大中专教材</a></div>
			</div>
		</div>
		<div class="menuParent">
			<div class="ListTitlePanel">
				<div class="ListTitle">
					<strong>文学</strong>
					<div class="leftbgbt2"> </div>
				</div>
			</div>
			<div class="menuList">
				<div> <a href="#">都市情感</a></div>
				<div> <a href="../fenlei.jsp" target="MainFrame">悬疑科幻</a></div>
				<div> <a href="#">休闲娱乐</a></div>
				<div> <a href="#">青春励志</a></div>
			</div>
		</div>
        <div class="menuParent">
			<div class="ListTitlePanel">
				<div class="ListTitle">
					<strong>生活</strong>
					<div class="leftbgbt2"> </div>
				</div>
			</div>
			<div class="menuList">
				<div> <a href="#">家教</a></div>
				<div> <a href="#">育儿母婴</a></div>
				<div> <a href="#">旅游指南</a></div>
				<div> <a href="#">健身保健</a></div>
			</div>
		</div>
		<div class="menuParent">
			<div class="ListTitlePanel">
				<div class="ListTitle">
					<strong>艺术欣赏</strong>
					<div class="leftbgbt2"> </div>
				</div>
			</div>
			<div class="menuList">
				<<div> <a href="#">名家画作</a></div>
				<div> <a href="#">歌曲鉴赏</a></div>
                <<div> <a href="#">电影</a></div>
                <<div> <a href="#">乐器</a></div>
			</div>
		</div>
	</div>
</div>
<div style="text-align:center;">
<p>本网站最终解释权归张田钢所有！</p>
</div>
</body>
</html>
