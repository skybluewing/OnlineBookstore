<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		<!--导航部分  begin-->
		<div class="container" style="margin-top: 5px;">
			<nav class="navbar navbar-default well-sm" style="padding-left: 0px;" role="navigation">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
				            <span class="sr-only">切换导航</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
        				</button>
						<a class="navbar-brand" href="#">在线书城</a>
					</div>
					<div class="collapse navbar-collapse" id="example-navbar-collapse">
						<ul class="nav navbar-nav pull-left">
							<li>
								<a href="index.jsp">首页</a>
							</li>
					
							<li style="background-color: #999;">
								<li class="dropdown">
									<a style="background-color: #E7E7E7;" class="dropdown-toggle" data-toggle="dropdown">
										图书类型
										<b class="caret"></b>
									</a>
									<ul class="dropdown-menu">
										<li>
											<a href="books_list.jsp">精选图书</a>
										</li>
										<li class="divider"></li>
										<li>
											<a href="books_list.jsp">推荐图书</a>
										</li>
										<li class="divider"></li>
										<li>
											<a href="books_list.jsp">特价图书</a>
										</li>
										<li class="divider"></li>
									</ul>
								</li>
							<li>
								<a href="#" data-toggle="modal" data-target="#myModal">登录</a>
							</li>
							<li>
								<a href="index.jsp">安全退出</a>
							</li>
							<li>
								<a href="#" data-toggle="modal" data-target="#register">注册</a>
							</li>
							<li>
								<a href="order_list.jsp">我的订单</a>
							</li>
							<li>
								<a href="cart.jsp"><span class="glyphicon glyphicon-shopping-cart"> </span>我的购物车</a>
							</li>
						</ul>
						<div class="input-group col-md-3 pull-right" style="positon:relative;padding: 7px;">
							<input type="text" class="form-control" placeholder="请输入图书名" />
							<span class="input-group-btn">  
					            <button class="btn btn-info btn-search">
					            	<span class="glyphicon glyphicon-search"></span>
					            </button>
							</span>
						</div>
					</div>
				</div>
			</nav>
		</div>
		<!--导航部分 end-->