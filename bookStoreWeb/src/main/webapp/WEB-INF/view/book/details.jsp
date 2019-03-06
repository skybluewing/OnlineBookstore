<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>图书详情</title>
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

		<!--外层div-->
		<div class="container">
			<!--左边-->
			<div class="col-md-8 col-sm-12">
				<ol class="breadcrumb">
					<li>
						<a href="#">图书详情</a>
					</li>
					<li>
						<a href="#">愿你的青春不负梦想</a>
					</li>
				</ol>

				<div class="row">
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a><img src="images/yuannideqingchunbufumengxiang.jpg" style="height: 200px;" alt="通用的占位符缩略图"></a>
							<div class="caption">
								<h3>愿你的青春不负梦想</h3>
								<p>双十一特价,包邮哟!亲<img src="images/3.gif" style="width: 24px;height: 24px;"></p>
								<p>
									<div style="margin-bottom: 5px;width: 100px;">
										<input type="number" class="form-control" placeholder="购买数量" min="1" max="100" onclick="selectByCount(this)">
									</div>
									<div style="clear: both;">
										<!--<input type="number" class="form-control" placeholder="请输入" min="1" max="100" onclick="selectByCount(this)">-->
										<a href="confirm_order.html" class="btn btn-default" role="button">
											<span class="glyphicon glyphicon-usd"></span> 立即购买
										</a>
										<a href="cart.html" class="btn btn-default" role="button">
											<span class="glyphicon glyphicon-shopping-cart"></span> 加入购物车
										</a>
									</div>
								</p>
							</div>
						</div>
					</div>

					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<ul class="list-group">
								<li class="list-group-item"><span class="text-success">图书名称:愿你的青春不负梦想</span></li>
								<li class="list-group-item"><span class="text-info">作者:</span>俞敏洪</li>
								<li class="list-group-item"><span class="text-info">出版日期:2017年01月</span></li>
								<li class="list-group-item"><span class="text-info">出版社:</span>湖南文艺出版社</li>
								<li class="list-group-item"><span class="text-info" style="text-decoration: line-through;">原价:</span><span style="text-decoration: line-through;">$36元</span></li>
								<li class="list-group-item"><span class="text-info">现价:</span>$21.6元</li>
								<li class="list-group-item"><span class="text-info">说明:</span> 50年心路历程×25年创业思考×80场演讲精华，与不甘平庸的你，谈谈如何度过不悔的青春，实现你心中的梦想。
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!--<hr>-->
				<!--折叠部分 begin-->
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
							展开详细信息
						</a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse">
						<div class="panel-body">
							<!--tab选项卡 begin-->
							<ul id="myTab" class="nav nav-tabs">
								<li class="active">
									<a href="#home" data-toggle="tab">
										商品详情
									</a>
								</li>
								<li>
									<a href="#ios" data-toggle="tab"> <span class="badge pull-right">50</span>累计评价</a>
								</li>
							</ul>
							<div id="myTabContent" class="tab-content">
								<div class="tab-pane fade in active" id="home">
									<p>
										<em>产品参数：</em>
									</p>
									<div class="row">
										<div class="col-sm-12 col-md-6">
											<ul class="nav navbar-collapse" style="line-height: 3">
												<li class="text-info">产品名称：愿你的青春不负梦想</li>
												<li class="text-info">是否是套装: 否</li>
												<li class="text-info">书名:愿你的青春不负梦想</li>
												<li class="text-info">定价: 36.00元</li>
												<li class="text-info">出版社名称: 湖南文艺出版社</li>
												<li class="text-info">出版时间: 2017年01月</li>
												<li class="text-info">作者: 俞敏洪</li>
												<li class="text-info">作者地区: 中国</li>
												<li class="text-info">书名: 愿你的青春不负梦想</li>
												<li class="text-info">ISBN编号: 9787540478612</li>
											</ul>
										</div>
										<span class="visible-sm visible-xs"><hr></span>
										
									</div>
									</p>
								</div>
								<div class="tab-pane fade" id="ios">
									<p>
										<ul class="list-group">
											<li class="list-group-item"><span class="text-info">小明:</span><span class="text-success ">这真的是一本好书<img src="images/emotions/1.gif "></span></li>
											<li class="list-group-item"><span class="text-info">success:</span><span class="text-danger ">书的质量很差<img src="images/emotions/2.gif "></span></li>
											<li class="list-group-item"><span class="text-info">叶老师:</span><span class="text-success ">很值得初学者学习<img src="images/emotions/13.gif "></span></li>
											<li class="list-group-item"><span class="text-info">amdin:</span><span class="text-danger ">被坑大发了.<img src="images/emotions/17.gif "></span></li>
											<li class="list-group-item"><span class="text-info">rose:</span><span class="text-danger ">卖家态度恶劣.<img src="images/emotions/11.gif "></span></li>
										</ul>
									</p>
									<p>
										<ul class="pager">
											<li>
												<a href="# ">&larr;上一页</a>
												<a href="# ">下一页 &rarr;</a>
											</li>
										</ul>
									</p>
								</div>
							</div>
							<!--tab选项卡 end-->
						</div>
					</div>
				</div>
				<!--折叠部分end-->
			</div>

			<!--右边-->
			<div class="col-md-4 col-sm-3 col-xs-8">
				<ol class="breadcrumb ">
					<li>
						<a href="# " class="text-success "><span class="glyphicon glyphicon-shopping-cart "></span>我的购物车</a>
					</li>
					<li>
						<a href="# ">3个商品</a>
					</li>
					<li>
						<a href="# ">总价100元</a>
					</li>
				</ol>

				<!--猜您喜欢-->
				<div>
					<span class="text-info"><span class="glyphicon glyphicon-heart"></span><span style="font-size: 20px; ">猜您喜欢</span></span>
					<div class="row" id="love">
						<div class="col-sm-12 col-md-12 wow fadeInRight animated">
							<div class="thumbnail">
								<a href="details.html"><img src="images/xiaodaolifencunzhijian.jpg " style="height: 200px; " alt="通用的占位符缩略图 "></a>
								<div class="caption ">
									<h3>小道理：分寸之间</h3>
								</div>
							</div>
						</div>
						<div class="col-sm-12 col-md-12 wow fadeInRight animated">
							<div class="thumbnail ">
								<a href="details.html"><img src="images/NO SECRETS.jpg " style="height: 200px; " alt="通用的占位符缩略图 "></a>
								<div class="caption ">
									<h3>名创优品没有秘密</h3>
								</div>
							</div>
						</div>
						<div class="col-sm-12 col-md-12 wow fadeInRight animated">
							<div class="thumbnail ">
								<a href="details.html"><img src="images/maichanpinjiushimaiziji.jpg" style="height: 200px; " alt="通用的占位符缩略图 "></a>
								<div class="caption ">
									<h3>卖产品就是卖自己</h3>
								</div>
							</div>
						</div>
						<div>
							<ul class="pager ">
								<li>
									<a href="# " onclick="pageUp() ">&larr;上一页</a>
									<a href="# " onclick="pageDown() ">下一页 &rarr;</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
			<!-- 加载页面底部 -->
	<jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>

		<script src="dist/js/jquery.min.js"></script>
		<script src="js/wow.js"></script>
		<script src="js/carousel.js" type="text/javascript"></script>
		<script src="dist/js/bootstrap.min.js"></script>
		<script src="js/details.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			if(!(/msie [6|7|8|9]/i.test(navigator.userAgent))) {
				new WOW().init();
			};
		</script>
	</body>
</html>