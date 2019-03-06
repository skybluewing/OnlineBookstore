<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>我的订单</title>
		<link type="text/css" rel="stylesheet" href="dist/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="css/index.css" />
		<link rel="stylesheet" type="text/css" href="css/animate.css" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap-datetimepicker.min.css"/>
		<link rel="stylesheet" type="text/css" href="css/order_list.css"/>
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

		<!--订单begin-->
		<!--外层div-->
		<div class="container">
			<!--左边-->
			<div class="container pull-left">
				<ol class="breadcrumb">
					<li>
						<a href="#" class="text-success"><span class="glyphicon glyphicon-list"></span>&nbsp;&nbsp;我的订单</a>
					</li>
				</ol>

				<!--订单查询导航 begin-->
				<div>
					<nav class="navbar navbar-default" role="navigation">
						<div class="navbar-header">
							<a class="navbar-brand" href="#">所有订单</a>
						</div>

						<form class="navbar-form navbar-left" role="search">
							<input type="text" class="form-control" placeholder="输入订单号进行查询">
							<button type="button" class="btn btn-search">
			                  	<span class="text-success">Search</span>&nbsp;&nbsp;<span class="glyphicon glyphicon-search"></span>
			            	</button>
						</form>

						<ul class="nav navbar-nav navbar-left">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									交易状态
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a href="#">全部</a>
									</li>
									<li class="divider"></li>
									<li>
										<a href="#">已付款</a>
									</li>
									<li class="divider"></li>
									<li>
										<a href="#">未付款</a>
									</li>
									<li class="divider"></li>
									<li>
										<a href="#">交易成功</a>
									</li>
									<li class="divider"></li>
								</ul>
							</li>
						</ul>
						<ul class="nav navbar-nav navbar-left">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									订单排序
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a href="#">订单日期降序</a>
									</li>
									<li class="divider"></li>
									<li>
										<a href="#">订单日期升序</a>
									</li>
									<li class="divider"></li>
								</ul>
							</li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li style="padding-right: 15px;">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">更多筛选条件</a>
							</li>
						</ul>
						
						<ul class="nav navbar-nav">
							<li>
								<a href="#">删除订单</a>
							</li>
						</ul>
							<ul class="nav navbar-nav">
							<li>
								<a href="#">清空订单列表</a>
							</li>
						</ul>
					</nav>
				</div>
				
				<!--订单查询导航 end-->
				<!--日期控件-->
				<div id="collapseTwo" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="form-group">	
							<div>
								<form class="form-horizontal">
							  		<div class="form-group has-feedback">
							  			<div class="col-md-1" style="padding-top:5px ;">
							  				成交日期:
							  			</div>
										<div class="col-md-3">
											<input type="text" class="form-control" id="datetimepicker" placeholder="开始时间">
											<span class="glyphicon glyphicon-time form-control-feedback"></span>
										</div>
										<div class="col-md-1" style="padding-top:5px ;text-align:center;">
							  				至
							  			</div>
										<div class="col-md-3">
											<input type="text" class="form-control" id="datetimepicker2" placeholder="结束日期">
											<span class="glyphicon glyphicon-time form-control-feedback"></span>
										</div>
										<div class="col-md-3">
											<button type="button" class="btn btn-default">查询&nbsp;&nbsp;<span class="glyphicon glyphicon-search"></button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!--日期控件-->
				
				<!--内容展示 begin-->
				<div class="table-responsive">
				  <table class="table table-hover table-striped">
				    <caption class="text-info">
				    	<div class="col-md-10" style="padding-left: 0px;">
				    		<input type="checkbox" name="cks">&nbsp;2017-01-09  订单号:1527600039447022单
				    	</div>
				    	<div class="col-md-2" style="text-align: right;">
				    		<a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">订单详情</a>
				    	</div>
				    </caption>
				    <thead>
				    	<tr id="collapseThree" class="panel-collapse collapse">
					      	<td colspan="9">
							<div class="panel-body">
								<!--tab选项卡 begin-->
								<ul id="myTab" class="nav nav-tabs">
									<li class="active">
										<a href="#home" data-toggle="tab">
											联系人信息
										</a>
									</li>
									<li>
										<a href="#ios" data-toggle="tab">订单信息</a>
									</li>
								</ul>
								<div id="myTabContent" class="tab-content">
									<div class="tab-pane fade in active" id="home">
										<div class="row">
											<div>
												<ul class="nav navbar-collapse" style="line-height: 3">
													<li class="text-info"><span class="text-success">姓名:</span><span class="text-info">管成功</span></li>
													<li class="text-info"><span class="text-success">联系方式:</span> 15906128572</li>
													<li class="text-info"><span class="text-success">收货地址:</span>江苏省苏州市姑苏区烽火路80号天创企业3楼</li>
												</ul>
											</div>
										</div>
										</p>
									</div>
									<div class="tab-pane fade" id="ios">
										<div class="row">
											<div>
												<ul class="nav navbar-collapse" style="line-height: 3">
													<li class="text-info"><span class="text-success">订单编号:</span><span class="text-info">1527600039447022</span></li>
													<li class="text-info"><span class="text-success">交易时间:</span>01/04/2017 12:52 PM</li>
													<li class="text-info"><span class="text-success">订单总金额:</span>520.0元</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<!--tab选项卡 end-->	
							</td>
				      	</tr>
					    <tr class="active">
					    	<th>序号</th>
					        <th>图片</th>
					        <th>图片名称</th>
					        <th>单价(元)</th>
					        <th>数量</th>
					        <th>实付款(元)</th>
					        <th>付款日期</th>
					        <th>交易状态</th>
					    </tr>
				    </thead>
				    <tbody>
				      <tr class="warning">
				      	<td>1001</td>
				        <td><img src="images/yuannideqingchunbufumengxiang.jpg"></td>
				        <td>愿你的青春不负梦想</td>
				        <td>80.0</td>
				        <td>2</td>
				        <td>160.0</td>
				        <td>01/08/2017</td>
				        <td>未付款</td>
				      </tr>
				      <tr>
				      	<td>1002</td>
				        <td><img src="images/xiaoshouxinlizhan.jpg"></td>
				        <td>销售心理战</td>
				        <td>180.0</td>
				        <td>2</td>
				        <td>360.0</td>
				        <td>01/08/2017</td>
				        <td>已付款</td>
				      </tr>
				    </tbody>
				  </table>
				  
				    <table class="table table-hover table-striped">
				    <caption class="text-info">
				    	<div class="col-md-10" style="padding-left: 0px;">
				    		<input type="checkbox" name="cks">&nbsp;2017-01-09  订单号:1527600039447022单
				    	</div>
				    		
				    	<div class="col-md-2" style="text-align: right;">
				    		<a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">订单详情</a>
				    	</div>
				    </caption>
				    <thead>
				    	<tr id="collapseFour" class="panel-collapse collapse">
					      	<td colspan="9">
							<div class="panel-body">
								<!--tab选项卡 begin-->
								<ul id="myTab" class="nav nav-tabs">
									<li class="active">
										<a href="#first" data-toggle="tab">
											联系人信息
										</a>
									</li>
									<li>
										<a href="#two" data-toggle="tab">订单信息</a>
									</li>
								</ul>
								<div id="myTabContent" class="tab-content">
									<div class="tab-pane fade in active" id="first">
										<div class="row">
											<div>
												<ul class="nav navbar-collapse" style="line-height: 3">
													<li class="text-info"><span class="text-success">姓名:</span><span class="text-info">管成功</span></li>
													<li class="text-info"><span class="text-success">联系方式:</span> 15906128572</li>
													<li class="text-info"><span class="text-success">收货地址:</span>江苏省苏州市姑苏区烽火路80号天创企业3楼</li>
												</ul>
											</div>
										</div>
										</p>
									</div>
									<div class="tab-pane fade" id="two">
										<div class="row">
											<div>
												<ul class="nav navbar-collapse" style="line-height: 3">
													<li class="text-info"><span class="text-success">订单编号:</span><span class="text-info">1527600039447022</span></li>
													<li class="text-info"><span class="text-success">交易时间:</span>01/04/2017 12:52 PM</li>
													<li class="text-info"><span class="text-success">订单总金额:</span>1520.0元</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<!--tab选项卡 end-->	
							</td>
				      	</tr>
					    <tr class="active">
					    	<th>序号</th>
					        <th>图片</th>
					        <th>图片名称</th>
					        <th>单价(元)</th>
					        <th>数量</th>
					        <th>实付款(元)</th>
					        <th>付款日期</th>
					        <th>交易状态</th>
					    </tr>
				    </thead>
				    <tbody>
				      <tr class="warning">
				      	<td>1001</td>
				        <td><img src="images/woyushijiezhichayigeni.jpg"></td>
				        <td>我与世界只差一个人</td>
				        <td>80.0</td>
				        <td>2</td>
				        <td>160.0</td>
				        <td>01/08/2017</td>
				        <td>未付款</td>
				      </tr>
				      <tr>
				      	<td>1002</td>
				        <td><img src="images/yunyinbiji.jpg"></td>
				        <td>运营笔记</td>
				        <td>180.0</td>
				        <td>2</td>
				        <td>360.0</td>
				        <td>01/08/2017</td>
				        <td>已付款</td>
				      </tr>
				       <tr class="success">
				      	<td>1002</td>
				        <td><img src="images/xiaodaolifencunzhijian.jpg"></td>
				        <td>小道理：分寸之间</td>
				        <td>180.0</td>
				        <td>2</td>
				        <td>360.0</td>
				        <td>01/08/2017</td>
				        <td>交易成功</td>
				      </tr>
				    </tbody>
				  </table>
				</div>
				<!--内容展示end-->
			</div>
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
		<script src="dist/js/bootstrap.min.js"></script>
		<script src="js/moment.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/bootstrap-datetimepicker.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			$('#datetimepicker').datetimepicker();
			$('#datetimepicker2').datetimepicker();
		</script>
	</body>
</html>