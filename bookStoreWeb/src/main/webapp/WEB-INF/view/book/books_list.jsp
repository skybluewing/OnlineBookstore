<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>图书列表</title>
		<link type="text/css" rel="stylesheet" href="dist/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="css/index.css" />
		<link rel="stylesheet" type="text/css" href="css/animate.css" />
	
	</head>
	<body>
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
		<div class="container">	
			<ol class="breadcrumb">
			    <li><a href="#">图书列表</a></li>
			    <li><a href="#">精选图书</a></li>
			</ol>
		</div>
		
		<!--图书列表 begin-->
		<div class="container">
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
							<h3>我与世界只差一个人</h3>
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
			</div>
			<div class="row">
				<div class="col-sm-6 col-md-3 wow fadeInLeft animated">
					<div class="thumbnail">
						<a href="details.html"><img src="images/xiaodaolifencunzhijian.jpg" alt="通用的占位符缩略图"></a>
						<div class="caption">
							<h3>小道理：分寸之战</h3>
							<p>价格:33.1元&nbsp;&nbsp;作者:冯仑&nbsp;&nbsp;</p>
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
			</div>
		</div>
		<!--图书列表end-->

		<!--分页begin-->
			<div class="container">
				<div class="row text-center">
					<div class="col-md-12">
						<ul class="pagination">
							<li><a href="#">首页</a></li>
						    <li class="disabled"><a href="#">&laquo;</a></li>
						    <li><a href="#">1</a></li>
						    <li><a href="#">2</a></li>
						    <li class="active"><a href="#">3</a></li>
						    <li><a href="#">4</a></li>
						    <li><a href="#">5</a></li>
						    <li><a href="#">&raquo;</a></li>
						    <li><a href="#" style="border: 1px solid #ddd;">尾页</a></li>
						    <li><a style="border: 0px;margin-left: 0px;">当前页3/5总页</a></li>
						    <li>
						     	
						     	<div id="search" class="input-group" style="positon:relative;">
									<input type="text" class="form-control" placeholder="跳转指定页" />
									<span class="input-group-btn">  
							            <button class="btn btn-info btn-search">GO</button>
									</span>
								</div>
						   </li>
						    <li><a style="padding-top: 0px;border: 0px;">
						     	<label>每页显示:</label>
						     	<select id="pageSize" class="form-control" style="width: 100px;display: inline;">
						     		<option value="2">2</option>
						     		<option value="2">4</option>
						     		<option value="2">6</option>
						     		<option value="2">8</option>
						     	</select>
						     	<label>条</label>
						     </a>
						   </li>
					    </ul>
					</div>
				</div>
			</div>
			<!--分页end-->
		
			<!-- 加载页面底部 -->
	<jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
	
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
