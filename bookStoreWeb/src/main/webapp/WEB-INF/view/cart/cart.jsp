<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>我的购物车</title>
		<link type="text/css" rel="stylesheet" href="dist/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="css/index.css" />
		<link rel="stylesheet" type="text/css" href="css/cart.css" />
		<link rel="stylesheet" type="text/css" href="css/animate.css" />
	</head>

	<body onload="changeNum()">
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
		<!--购物车 begin-->
		<!--外层div-->
		<div class="container">
			<!--左边-->
			<div class="col-md-8 col-sm-12">
				<!--左边-->
				<ol class="breadcrumb">
					<li>
						<a href="#" class="text-success"><span class="glyphicon glyphicon-heart"></span>&nbsp;&nbsp;我的宝贝</a>
					</li>
				</ol>

				<!--购物车表格 begin-->
				<div class="table-responsive" id="imgDiv">
					<table class="table table-hover table-striped" style="vertical-align:middle;">
						<thead>
							<tr>
								<td colspan="8">
									<label class="text-primary">显示条数:</label>
									<select id="cartSzie" class="form-control" style="display: inline" onchange="displaySize(this)">
										<option value="2">2</option>
										<option value="4">4</option>
										<option value="6" selected>6</option>
										<option value="8">8</option>
									</select>
								</td>
							</tr>
							<tr class="text-success success">
								<th><input type="checkbox" id="selectAll" onclick="selectAll(this)"></th>
								<th id="sequence">序号</th>
								<th>图片</th>
								<th>书名</th>
								<th>单价</th>
								<th>数量</th>
								<th>合计</th>
							</tr>
						</thead>
						<tbody id="tby">
							<tr>
								<td><input type="checkbox" name="cks"></td>
								<td>1001</td>
								<td><img src="images/tenxunchuan.jpg"></td>
								<td>腾讯传</td>
								<td>35.0元</td>
								<td>7</td>
								<td>100$</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="cks"></td>
								<td>1002</td>
								<td><img src="images/ouzhou.jpg"></td>
								<td>欧洲</td>
								<td>35.0元</td>
								<td>5</td>
								<td>100$</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="cks"></td>
								<td>1003</td>
								<td><img src="images/taikong.jpg"></td>
								<td>太空</td>
								<td>35.0元</td>
								<td>5</td>
								<td>100$</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="cks"></td>
								<td>1004</td>
								<td><img src="images/NO SECRETS.jpg"></td>
								<td>NO SECRETS</td>
								<td>35.0元</td>
								<td>6</td>
								<td>100$</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="cks"></td>
								<td>1005</td>
								<td><img src="images/xizang.jpg"></td>
								<td>西藏</td>
								<td>35.0元</td>
								<td>5</td>
								<td>100$</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="5"></td>
								<td class="text-success">总价:</td>
								<td class="text-success">345$:</td>
							</tr>
							<tr style="background-color: white;">
								<td>
									<a href="index.html" class="btn btn-info">&lt;&lt;继续购买</a>
								</td>
								<td><button class="btn btn-danger" data-toggle="modal" data-target="#myModal" onclick="del()">删除商品</button></td>
								<td colspan="4"></td>
								<td>
									<a href="confirm_order.html" class="btn btn-warning">结算商品</a>
								</td>
							</tr>
						</tfoot>
					</table>
				</div>
				<!--购物车 end-->

				<!--删除提示模态框 begin-->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<!--如果没有选中任何一个商品的时候,出现-->
					<div id="first_del" style="display: none;">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									<h4 class="modal-title text-warning" id="myModalLabel">抱歉!请您先选择商品!</h4>
								</div>
								<div class="modal-body">请选进行勾选!再执行删除删除!</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
					</div>
					<!--first_del  end-->

					<!--如果没有选中了一个商品的时候,出现-->
					<div id="two_del" style="display: none;">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									<h4 class="modal-title text-warning" id="myModalLabel">删除商品,慎重操作!</h4>
								</div>
								<div class="modal-body">此操作一旦进行,数据将不可恢复!</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
									<button type="button" class="btn btn-danger" onclick="delRows(this)">确定删除</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
					</div>
					<!--two_del  end-->
				</div>
				<!--删除提示模态框 end-->
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
					<span class="text-info"><span class="glyphicon glyphicon-heart"></span><span style="font-size: 20px; ">&nbsp;&nbsp;猜您喜欢</span></span>
					<div class="row" id="love">
						<div class="col-sm-12 col-md-12 wow fadeInRight animated">
							<div class="thumbnail">
								<a href="details.html"><img src="images/cikehuakai.jpg " style="height: 200px; " alt="通用的占位符缩略图 "></a>
								<div class="caption ">
									<h3>此刻花开</h3>
								</div>
							</div>
						</div>
						<div class="col-sm-12 col-md-12 wow fadeInRight animated">
							<div class="thumbnail ">
								<a href="details.html"><img src="images/jindumanbu.jpg " style="height: 200px; " alt="通用的占位符缩略图 "></a>
								<div class="caption ">
									<h3>京都漫步</h3>
								</div>
							</div>
						</div>
						<div class="col-sm-12 col-md-12 wow fadeInRight animated">
							<div class="thumbnail ">
								<a href="details.html"><img src="images/lapulasidemonv.jpg" style="height: 200px; " alt="通用的占位符缩略图 "></a>
								<div class="caption ">
									<h3>拉普拉斯的魔女</h3>
								</div>
							</div>
						</div>
						<div>
							<ul class="pager ">
								<li>
									<a href="#" onclick="pageUp() ">&larr;上一页</a>
									<a href="#" onclick="pageDown() ">下一页 &rarr;</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!--喜欢end-->
			</div>
		</div>

					<!-- 加载页面底部 -->
	<jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>

		<!--引入js文件-->
		<script src="dist/js/jquery.min.js"></script>
		<script src="js/wow.js"></script>
		<script src="js/carousel.js" type="text/javascript"></script>
		<script src="dist/js/bootstrap.min.js"></script>
		<script src="js/details.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/cart.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			if(!(/msie [6|7|8|9]/i.test(navigator.userAgent))) {
				new WOW().init();
			};
		</script>
	</body>

</html>