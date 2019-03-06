<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>结算</title>
		<link type="text/css" rel="stylesheet" href="dist/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="css/index.css" />
		<link rel="stylesheet" type="text/css" href="css/cart.css" />
		<link rel="stylesheet" type="text/css" href="css/animate.css" />
	
		<style type="text/css">
			.form-control{
				width: 100%;
			}
		</style>
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
		
		<!--购物车 begin-->
		<!--外层div-->
		<div class="container">
			<!--左边-->
			<div class="col-md-8 col-sm-12">
				<ol class="breadcrumb">
					<li>
						<a href="#" class="text-success"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;送货地址</a>
					</li>
				</ol>
				
				<!--送货地址  begin-->
				<div style="margin-bottom: 5px;" id="addrDiv">
					<ul class="list-group" id="address">
						<li class="list-group-item"><input type="radio" name="addr">&nbsp;江苏省苏州市金阊区烽火路81号 天创大厦4层</li>
						<li class="list-group-item"><input type="radio" name="addr">&nbsp;江苏省苏州市金阊区烽火路82号 天创大厦1层</li>
						<li class="list-group-item"><input type="radio" name="addr" checked>&nbsp;江苏省苏州市金阊区烽火路83号 天创大厦2层 &nbsp;<span class="text-success">默认地址</span></li>
						<li class="list-group-item"><input type="radio" name="addr">&nbsp;江苏省苏州市金阊区烽火路84号 天创大厦3层</li>
						<li class="list-group-item hidden"><input type="radio" name="addr">&nbsp;江苏省苏州市金阊区烽火路85号 天创大厦4层</li>
						<li class="list-group-item hidden"><input type="radio" name="addr">&nbsp;江苏省苏州市金阊区烽火路88号 天创大厦3层</li>
						<li class="list-group-item hidden"><input type="radio" name="addr">&nbsp;江苏省苏州市金阊区烽火路89号 天创大厦4层</li>
					</ul>
					<a href="#" class="text-info" onclick="dispalyMoreAddr(this)">更多地址↓&nbsp;&nbsp;</a>
					<a href="javascript:void(0)" id="addAddr" class="text-success" data-toggle="modal" data-target="#myModal">添加新地址</a>
				</div>
				<hr>
				
				
				<!--添加新地址模态框 begin-->
				<!-- 模态框（Modal） -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">
									<span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;添加新收货地址
								</h4>
							</div>
							<div class="modal-body">
							<!--登录的form表单-->
							<form action="" class="form-horizontal" role="form">
								<div class="form-group">
									<label class="col-md-2 control-label" style="margin-right: 2.9%;">所在地区:</label>
										
									<div data-toggle="distpicker">
										<div class="form-group col-sm-12 col-md-3">
										  <label class="sr-only" for="province1">Province</label>
										  <select class="form-control" id="province1"></select>
										</div>
										<div class="form-group col-sm-12 col-md-3">
										  <label class="sr-only" for="city1">City</label>
										  <select class="form-control" id="city1"></select>
										</div>
										<div class="form-group col-sm-12 col-md-3">
										  <label class="sr-only" for="district1">District</label>
										  <select class="form-control" id="district1"></select>
										</div>
									 </div>
								</div>
								<div class="form-group has-feedback" style="clear:both">
									<label for="lastname" class="col-sm-2 control-label">详细地址:</label>
									<div class="col-sm-5">
										<textarea class="form-control" id="deatails"></textarea>
									</div>
									
								</div>
								<div class="form-group has-feedback">
									<label class="col-sm-2 control-label">邮政编码</label>
									<div class="col-md-5">
										<input type="text" class="form-control" id="lastname2" placeholder="邮政编码">
										<span class="glyphicon glyphicon-hand-left form-control-feedback"></span>
									</div>
								</div>
	
								<div class="form-group has-feedback">
									<label class="col-sm-2 control-label">姓名</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="username" placeholder="收货人姓名">
										<span class="glyphicon glyphicon-user form-control-feedback"></span>
									</div>
								</div>

								<div class="form-group has-feedback">
									<label class="col-sm-2 control-label">电话</label>
									<div class="col-sm-5">
										<input type="tel" class="form-control" id="tel" placeholder="合法手机格式">
										<span class="glyphicon glyphicon-phone form-control-feedback"></span>
									</div>
								</div>
								
								<div class="form-group">
								    <div class="col-sm-offset-2 col-sm-10">
								      <div class="checkbox">
								        <label>
								          <input type="checkbox" id="setDefaultAddr"><span class="text-success">设置默认地址</span>
								        </label>
								      </div>
								    </div>
								</div>

								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
									<input type="submit" class="btn btn-primary" value="提交地址">
								</div>
							</form>
						<!--form结束-->
						</div>
					</div>
				<!-- /.modal-content -->
				</div>
			</div>
				<!--左边-->
				<ol class="breadcrumb">
					<li>
						<a href="#" class="text-success"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;结算清单</a>
					</li>
				</ol>

				<!--购物车表格 begin-->
				<div class="table-responsive" id="imgDiv">
					<table class="table table-hover table-striped" style="vertical-align:middle;">
						<thead>
							<tr class="text-success success">
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
								<td>1001</td>
								<td><img src="images/yuannideqingchunbufumengxiang.jpg"></td>
								<td>愿你的青春不负梦想</td>
								<td>35.0元</td>
								<td>7</td>
								<td>100$</td>
							</tr>
							<tr>
								<td>1002</td>
								<td><img src="images/xiaoshouxinlizhan.jpg"></td>
								<td>销售心理战</td>
								<td>35.0元</td>
								<td>5</td>
								<td>100$</td>
							</tr>
							<tr>
								<td>1003</td>
								<td><img src="images/woyushijiezhichayigeni.jpg"></td>
								<td>我与世界只差一个人</td>
								<td>35.0元</td>
								<td>5</td>
								<td>100$</td>
							</tr>
							<tr>
								<td>1004</td>
								<td><img src="images/yunyinbiji.jpg"></td>
								<td>运营笔记</td>
								<td>35.0元</td>
								<td>6</td>
								<td>100$</td>
							</tr>
							<tr>
								<td>1005</td>
								<td><img src="images/xiaodaolifencunzhijian.jpg"></td>
								<td>小道理：分寸之间</td>
								<td>35.0元</td>
								<td>5</td>
								<td>100$</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="4"></td>
								<td class="text-success">总价:</td>
								<td class="text-success">345$:</td>
							</tr>
							<tr style="background-color: white;">
								<td>
									<a href="index.html" class="btn btn-info">&lt;&lt;继续购买</a>
								</td>
								<td colspan="4"></td>
								<td>
									<a href="order_list.html" class="btn btn-warning">提交订单</a>
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
				<ol class="breadcrumb">
					<li>
						<a href="#" class="text-success"><span class="glyphicon glyphicon-shopping-cart "></span>我的购物车</a>
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
						<div class="wow fadeInRight animated">
							<div class="thumbnail">
								<a href="details.html"><img src="images/dongjian.jpg " style="height: 200px; " alt="通用的占位符缩略图 ">
								<div class="caption ">
									<h3>洞见</h3>
								</div>
							</div>
						</div>
						<div class="wow fadeInRight animated">
							<div class="thumbnail ">
								<a href="details.html"><img src="images/tenxunchuan.jpg" style="height: 200px; " alt="通用的占位符缩略图 "></a>
								<div class="caption ">
									<h3>腾讯传</h3>
								</div>
							</div>
						</div>
						<div class="wow fadeInRight animated">
							<div class="thumbnail ">
								<a href="details.html"><img src="images/taikong.jpg" style="height: 200px; " alt="通用的占位符缩略图 "></a>
								<div class="caption ">
									<h3>太空</h3>
								</div>
							</div>
						</div>
						<div>
							<ul class="pager">
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
	
		<script src="dist/js/jquery.min.js"></script>
		<script src="js/wow.js"></script>
		<script src="js/carousel.js" type="text/javascript"></script>
		<script src="dist/js/bootstrap.min.js"></script>
		<script src="dist/js/distpicker.data.min.js"></script>
		<script src="dist/js/distpicker.min.js"></script>
		<script src="js/details.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/cart.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/confirm_order.js"></script>
		<script type="text/javascript">
			if(!(/msie [6|7|8|9]/i.test(navigator.userAgent))) {
				new WOW().init();
			};
		</script>
	</body>
</html>
