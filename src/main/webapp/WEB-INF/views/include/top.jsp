<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>


<%--&lt;%&ndash; 顶部导航栏 &ndash;%&gt;--%>
<%--<nav id="site-nav" role="navigation">--%>
<%--    <div class="workArea">--%>

<%--        &lt;%&ndash; 导航栏左半部分--%>
<%--         如果取不到用户信息则显示如下： &ndash;%&gt;--%>
<%--        <c:if test="${empty sessionScope.user}">--%>
<%--            <span>欢迎来E-Store!!</span>--%>
<%--            <span><a href="/loginPage">请登录</a></span>--%>
<%--&lt;%&ndash;            <span><a href="/registerPage">免费注册</a></span>&ndash;%&gt;--%>
<%--        </c:if>--%>
<%--        &lt;%&ndash; 如果用户成功登录，则显示如下： &ndash;%&gt;--%>
<%--        <c:if test="${!empty sessionScope.user}">--%>
<%--            <span>Hi，${sessionScope.user.name}</span>--%>
<%--            <span><a href="usermessage">积分 <strong>12581</strong></a></span>--%>
<%--            <span><a href="/logout">退出</a></span>--%>
<%--        </c:if>--%>


<%--        &lt;%&ndash; 导航栏右半部分：--%>
<%--             使用Bootstrap的pull-right类 &ndash;%&gt;--%>
<%--        <span class="pull-right">--%>
<%--            <a> 个人中心 </a>--%>
<%--            <a href="bought">我的订单</a>--%>
<%--            <a href="cart">--%>
<%--                <span class="glyphicon glyphicon-shopping-cart redColor"></span>--%>
<%--                购物车<strong id="cartTotalItemNumber">${cartTotalItemNumber}</strong>件--%>
<%--            </a>--%>
<%--        </span>--%>

<%--</nav>--%>
<style>
    * {
        padding: 0;
        margin: 0;
        list-style: none;
        text-decoration: none;
    }

    html, body {
        width: 100%;
        height: 100%;
        background-color: white;
        color: #3c3c3c;
        overflow-x: hidden; /*横向滚动条隐藏*/

    }

    .wrapper {
        width: 100%;
        /*height: 100%;*/
    }

    .wrapper .top-nav-wrap {
        width: 100%;
        height: 40px;
        background-color: #f1f1f1;
        border-bottom-style:inset;
        border-color: rgba(0,0,255,0.05);
        border-width: 2px;
    }

    .wrapper .top-nav-wrap .top-nav {
        width: 1190px;
        height: 35px;
        margin: 0 auto;

    }

    .wrapper .top-nav-wrap .top-nav .top-nav-l {
        float: left;
    }

    .wrapper .top-nav-wrap .top-nav .top-nav-r {
        float: right;
    }

    .wrapper .top-nav-wrap .top-nav ul li {
        float: left;
        margin-right: 7px;
    }

    .wrapper .top-nav-wrap .top-nav a {
        color: black;
        font-size: 12px;
        line-height: 35px;
        padding: 0 6px;
    }

    .wrapper .top-nav-wrap .top-nav a:hover {
        color: #f40;
    }


    .wrapper .top-nav-wrap .top-nav .bg-pic {
        display: inline-block;
        width: 6px;
        height: 3px;
        background-size: 100% 100%;
        vertical-align: middle;  /*垂直排列中间对齐*/
    }

    .wrapper .top-nav-wrap .top-nav .c-span {
        padding: 0 6px;
    }

    /*.wrapper .top-nav-wrap .top-nav .bg-pic.personal-pic {*/
    /*    background-image: url('personal.png');*/
    /*    width: 15px;*/
    /*    height: 15px;*/
    /*}*/

    /*.wrapper .top-nav-wrap .top-nav .bg-pic.shoppingcart-pic {*/
    /*    background-image: url('shoppingcart.png');*/
    /*    width: 15px;*/
    /*    height: 15px;*/
    /*}*/

    /*.wrapper .top-nav-wrap .top-nav .bg-pic.order-pic {*/
    /*    background-image: url('order.png');*/
    /*    width: 15px;*/
    /*    height: 15px;*/
    /*}*/
</style>

<div class="wrapper">
    <div class="top-nav-wrap">
        <div class="top-nav">
            <%-- 导航栏左半部分
         如果取不到用户信息则显示如下： --%>
            <c:if test="${empty sessionScope.user}">
                <span>欢迎来E-Store!</span>
                <span><a href="/loginPage">请登录</a></span>
                <span><a href="/registerPage">免费注册</a></span>
            </c:if>
            <%-- 如果用户成功登录，则显示如下： --%>
            <c:if test="${!empty sessionScope.user}">
                <span>Hi，${sessionScope.user.name}</span>
<%--                <span><a href="usermessage">积分 <strong>12581</strong></a></span>--%>
                <span><a href="/logout">退出</a></span>
            </c:if>
<%--            <ul class="top-nav-l">--%>
<%--                <li class="top-nav-menu login">--%>
<%--                    <a href="login.html" class="login">亲，请先登录哦</a>--%>
<%--                </li>--%>
<%--            </ul>--%>
            <ul class="top-nav-r">
                <li class="top-nav-menu order">
                    <span class="bg-pic order-pic"></span>
                    <a href="bought">我的订单</a>

                </li>
                <li class="top-nav-menu shoppingcart">
                    <a href="cart">
                        <span class="bg-pic shoppingcart-pic"></span>
                        <span>购物车</span>
                    </a>

                </li>
<%--                <li class="top-nav-menu personal">--%>
<%--                    <a href="#">--%>
<%--                        <span class="bg-pic personal-pic"></span>--%>
<%--                        <span>收货地址</span>--%>
<%--                    </a>--%>
<%--                </li>--%>

            </ul>
        </div>
    </div>
</div>

