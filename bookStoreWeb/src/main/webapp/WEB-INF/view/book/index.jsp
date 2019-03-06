<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html>
<html>

	<head lang="en">
		<meta charset="UTF-8">
		<title>在线书城首页</title>
		<link type="text/css" rel="stylesheet" href="dist/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="css/index.css" />
		<link rel="stylesheet" type="text/css" href="css/animate.css" />
	</head>

	<body>
	<c:set var="path" value="${pageContext.request.contextPath }" scope="application"></c:set>

	<c:redirect url="/book/IndexAction"> </c:redirect>
	
	<!-- 加载页面顶部 -->
	<jsp:include page="/WEB-INF/view/common/header.jsp"></jsp:include>

		<!--最顶端轮播图片 begin-->
		<div id="gcarouse" class="container">
			<!--轮播-->
			<div id="myCarousel" class="carousel slide">
				<!-- 轮播（Carousel）指标 -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<!-- 轮播（Carousel）项目 -->
				<div class="carousel-inner">
					<div class="item active">
						<a href="details.html"><img src="images/advert1.jpg" class="pull-left" alt="First slide"></a>
					
					</div>
					<div class="item">
						<a href="details.html"><img src="images/advert2.jpg" class="pull-left" alt="First slide"></a>
						
					</div>
					<div class="item">
						<a href="details.html"><img src="images/advert3.jpg" class="pull-left" alt="First slide"></a>
					
					</div>
				</div>

				<!-- 轮播（Carousel）导航 -->
				<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
				<a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
			</div>
		</div>
		<!--最顶端轮播图片 end-->

		<!--图书内容部分 begin-->
		<div class="container">
			<!--精选图书 begin-->
			<div>
				<div class="text-primary"><img src="images/bullet1.gif" alt="" title="">
					<a href="#">精选图书</a>
				</div>
				<div class="row">
					<div class="col-sm-6 col-md-3 wow fadeInLeft animated">
						<div class="thumbnail">
							<a href="details.html"><img src="images/beiwei78.jpg" alt="通用的占位符缩略图"></a>
							<div class="caption">
								<h3>北纬78°</h3>
								<p>价格:19.5元&nbsp;&nbsp;作者:陈丹燕&nbsp;&nbsp;</p>
								<p>
									<a href="details.html">
										更多信息
									</a>
								</p>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-3 wow fadeInLeft animated">
						<div class="thumbnail">
							<a href="details.html"><img src="images/100dongjindarenweifaxian.jpg" alt="通用的占位符缩略图"></a>
							<div class="caption">
								<h3>东京大人味发现</h3>
								<p>价格:34.5元&nbsp;&nbsp;作者:吴东龙&nbsp;&nbsp;</p>
								<p>
									<a href="details.html">
										更多信息
									</a>
								</p>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-3 wow fadeInRight animated">
						<div class="thumbnail">
							<a href="details.html"><img src="images/biezouwanyihaoxiaone.jpg" alt="通用的占位符缩略图"></a>
							<div class="caption">
								<h3>别走！万一好笑呢？</h3>
								<p>价格:26.3元&nbsp;&nbsp;作者:银教授&nbsp;&nbsp;</p>
								<p>
									<a href="details.html">
										更多信息
									</a>
								</p>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-3 wow fadeInRight animated">
						<div class="thumbnail">
							<a href="details.html"><img src="images/cikehuakai.jpg" alt="通用的占位符缩略图"></a>
							<div class="caption">
								<h3>此刻花开</h3>
								<p>价格:34元&nbsp;&nbsp;作者:徐静&nbsp;&nbsp;</p>
								<p>
									<a href="details.html">
										更多信息
									</a>
								</p>
							</div>
						</div>
					</div>

					<!--分页-->
					<div class="container">
						<ul class="pager">
							<li>
								<a href="#">&larr;上一页</a>
								<a href="#">下一页 &rarr;</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!--精选图书 end-->

			<!--推荐图书 begin-->
			<div>
				<div class="text-primary"><img src="images/bullet1.gif" alt="" title="">
					<a href="#">推荐图书</a>
				</div>
				<div class="row">
					<div class="col-sm-6 col-md-3 wow fadeInLeft animated">
						<div class="thumbnail">
							<a href="details.html"><img src="images/dongjian.jpg" alt="通用的占位符缩略图"></a>
							<div class="caption">
								<h3>洞见</h3>
								<p>价格:34.6元&nbsp;&nbsp;作者:项保华&nbsp;&nbsp;</p>
								<p>
									<a href="details.html">
										更多信息
									</a>
								</p>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-3 wow fadeInLeft animated">
						<div class="thumbnail">
							<a href="details.html"><img src="images/tenxunchuan.jpg" alt="通用的占位符缩略图"></a>
							<div class="caption">
								<h3>腾讯传</h3>
								<p>价格:40.1元&nbsp;&nbsp;作者:吴晓波&nbsp;&nbsp;</p>
								<p>
									<a href="details.html">
										更多信息
									</a>
								</p>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-3 wow fadeInRight animated">
						<div class="thumbnail">
							<a href="details.html"><img src="images/woyushijiezhichayigeni.jpg" alt="通用的占位符缩略图"></a>
							<div class="caption">
								<h3>我与世界只差一个你</h3>
								<p>价格:38.7元&nbsp;&nbsp;作者:张皓宸&nbsp;&nbsp;</p>
								<p>
									<a href="details.html">
										更多信息
									</a>
								</p>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-3 wow fadeInRight animated">
						<div class="thumbnail">
							<a href="details.html"><img src="images/xiaoshouxinlizhan.jpg" alt="通用的占位符缩略图"></a>
							<div class="caption">
								<h3>销售心理战</h3>
								<p>价格:18.4元&nbsp;&nbsp;作者:霍金斯&nbsp;&nbsp;</p>
								<p>
									<a href="details.html">
										更多信息
									</a>
								</p>
							</div>
						</div>
					</div>

					<!--分页-->
					<div class="container">
						<ul class="pager">
							<li class="disabled">
								<a href="#">&larr;上一页</a>
							</li>
							<li>
								<a href="#">下一页 &rarr;</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!--推荐图书end..-->

			<!--特价图书 begin-->
			<div>
				<div class="text-primary"><img src="images/bullet1.gif" alt="" title="">
					<a href="#">特价图书</a>
				</div>
				<div class="row">
					<div class="col-sm-6 col-md-3 wow fadeInLeft animated">
						<div class="thumbnail">
							<a href="details.html"><img src="images/xiaodaolifencunzhijian.jpg" alt="通用的占位符缩略图"></a>
							<div class="caption">
								<h3>小道理：分寸之战</h3>
								<p>价格:33.10元&nbsp;&nbsp;作者:冯仑&nbsp;&nbsp;</p>
								<p>
									<a href="details.html">
										更多信息
									</a>
								</p>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-3 wow fadeInLeft animated">
						<div class="thumbnail">
							<a href="details.html"><img src="images/yuannideqingchunbufumengxiang.jpg" alt="通用的占位符缩略图"></a>
							<div class="caption">
								<h3>愿你的青春不负梦想</h3>
								<p>价格:21.6元&nbsp;&nbsp;作者:俞敏洪&nbsp;&nbsp;</p>
								<p>
									<a href="details.html">
										更多信息
									</a>
								</p>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-3 wow fadeInRight animated">
						<div class="thumbnail">
							<a href="details.html"><img src="images/NO SECRETS.jpg" alt="通用的占位符缩略图"></a>
							<div class="caption">
								<h3>名创优品没有秘密</h3>
								<p>价格:27元&nbsp;&nbsp;作者:杜博奇&nbsp;&nbsp;</p>
								<p>
									<a href="details.html">
										更多信息
									</a>
								</p>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-3 wow fadeInRight animated">
						<div class="thumbnail">
							<a href="details.html"><img src="images/xiegeinianqinrende1.jpg" alt="通用的占位符缩略图"></a>
							<div class="caption">
								<h3>写给年轻人的创业课</h3>
								<p>价格:19.9元&nbsp;&nbsp;作者:彭帅兴&nbsp;&nbsp;</p>
								<p>
									<a href="details.html">
										更多信息
									</a>
								</p>
							</div>
						</div>
					</div>

					<!--分页-->
					<div class="container">
						<ul class="pager">
							<li>
								<a href="#">&larr;上一页</a>
								<a href="#">下一页 &rarr;</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!--特价图书 end-->
			<hr>
			
			<!-- 加载页面底部 -->
	<jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>

		<!-- 登录模态框（Modal） -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
						<h4 class="modal-title" id="myModalLabel">
					用户登录
				</h4>
					</div>
					<div class="modal-body">
						<!--登录的form表单-->
						<form class="form-horizontal" role="form" action="">
							<div class="form-group has-feedback">
								<label for="firstname" class="col-sm-2 control-label">用户名</label>
								<div class="col-sm-5">

									<input type="text" class="form-control" id="firstname" placeholder="请输入用户名">
									<span class="glyphicon glyphicon-user form-control-feedback"></span>
								</div>
								<div class="col-sm-3" style="padding-top: 10px;">
									<label class="alert-danger">用户名不存在</label>
								</div>
							</div>
							<div class="form-group has-feedback">
								<label for="lastname" class="col-sm-2 control-label">密码</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="lastname" placeholder="请输入密码">
									<span class="glyphicon glyphicon-lock form-control-feedback"></span>
								</div>
								<div class="col-sm-3" style="padding-top: 10px;">
									<label class="alert-danger">密码不正确</label>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="checkbox">
										<label>
          									<input type="checkbox">请记住我
        								</label>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
								<input type="submit" class="btn btn-primary" value="登录">
							</div>
						</form>
						<!--form结束-->
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
		</div>
		<!-- 登录modal end/.modal -->
		<div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
						<h4 class="modal-title" id="myModalLabel">
					用户注册
				</h4>
					</div>
					<div class="modal-body">
						<!--登录的form表单-->
						<form action="" class="form-horizontal" role="form">
							<div class="form-group has-feedback">
								<label for="firstname" class="col-sm-2 control-label">用户名</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="firstname" required placeholder="小写字母开头,不含中文.">
									<span class="glyphicon glyphicon-user form-control-feedback"></span>
								</div>
								<!--<div class="col-sm-3" style="padding-top: 10px;">
									<label class="alert-danger">用户名不合法</label>
								</div>-->
							</div>
							<div class="form-group has-feedback">
								<label for="lastname" class="col-sm-2 control-label">密码</label>
								<div class="col-sm-5">
									<input type="password" class="form-control" id="lastname" placeholder="密码长度6-8位" minlength="6" maxlength="8">
									<span class="glyphicon glyphicon-lock form-control-feedback"></span>
								</div>
								<!--<div class="col-sm-3" style="padding-top: 10px;">
									<label class="alert-danger">密码不正确</label>
								</div>-->
							</div>
							<div class="form-group has-feedback">
								<label class="col-sm-2 control-label">确认密码</label>
								<div class="col-sm-5">
									<input type="password" class="form-control" id="lastname2" minlength="6" maxlength="8" placeholder="和密码保持一致">
									<span class="glyphicon glyphicon-lock form-control-feedback"></span>
								</div>
							</div>

							<div class="form-group has-feedback">
								<label class="col-sm-2 control-label">邮箱</label>
								<div class="col-sm-5">
									<input type="email" class="form-control" id="email" placeholder="合法邮箱格式">
									<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
								</div>
							</div>

							<div class="form-group has-feedback">
								<label class="col-sm-2 control-label">电话</label>
								<div class="col-sm-5">
									<input type="tel" class="form-control" id="email" placeholder="合法手机格式">
									<span class="glyphicon glyphicon-earphone form-control-feedback"></span>
								</div>
							</div>

							<div class="form-group has-feedback">
								<label class="col-sm-2 control-label">公司</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="email" placeholder="请输入公司地址">
									<span class="glyphicon glyphicon-home form-control-feedback"></span>
								</div>
							</div>

							<div class="form-group has-feedback">
								<label class="col-sm-2 control-label">地址</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="email" placeholder="请输入收货">
									<span class="glyphicon glyphicon-home form-control-feedback"></span>
								</div>
							</div>

							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
								<input type="submit" class="btn btn-primary" value="注册">
							</div>
						</form>
						<!--form结束-->
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
		</div>
		
		<script src="dist/js/jquery.min.js"></script>
		<script src="js/carousel.js" type="text/javascript" charset="utf-8"></script>
		<script src="dist/js/bootstrap.min.js"></script>
		<script src="js/wow.js"></script>
		<script type="text/javascript">
			if(!(/msie [6|7|8|9]/i.test(navigator.userAgent))) {
				new WOW().init();
			};
		</script>
	</body>
</html>
</html>