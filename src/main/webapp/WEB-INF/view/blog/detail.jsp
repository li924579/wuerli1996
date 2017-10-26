<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by CQU-CST-WuErli
  Date: 2017/10/5
  Time: 23:22
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Wu Erli's Blog</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../images/favicon-1.ico">

    <title>Wu Erli's Blog</title>

    <!-- Bootstrap core CSS -->
    <link href="../../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../../css/blog.css" rel="stylesheet">
    <link href="../../css/iconfont/iconfont.css" rel="stylesheet">
</head>
<body>
<div class="blog-masthead" >
    <div class="container">
        <nav class="blog-nav">
            <a class="blog-nav-item" href="../../blog">Home</a>
            <a class="blog-nav-item active" href="javascript:void(0);">Archives</a>
            <a class="blog-nav-item" href="../about">About</a>
            <a class="blog-nav-item" href="http://www.wuerli1996.cn">Personal Homepage</a>
        </nav>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="blog-header">
            <h1 class="blog-title">Wu Erli's Blog</h1>
            <p class="lead blog-description">Get busy living or get busy dying.</p>
        </div>
        <div class="col-sm-8 blog-main" style="padding-left: 0px">
            <div class="blog-post">
                <h2 class="blog-post-title">${object.title}</h2>
                <p class="blog-post-meta">Post in ${object.date}</p>
                <p>Tag:
                    <c:forEach items="${object.tagList}" var="list">
                        <span><i class="iconfont icon-tag-copy"></i>${list}</span>
                    </c:forEach>
                </p>
                <div id="warp-content">
                    ${object.content}
                </div>
            </div>
        </div>

        <div class="col-sm-3 col-sm-offset-1 blog-sidebar">
            <div class="sidebar-module sidebar-module-inset">
                <h4>Search in blog</h4>
                <form class="bs-example bs-example-form" role="form" style="margin-left: 7%">
                    <div class="row">
                        <div class="input-group">
                            <input type="text" class="form-control" >
                            <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">Go!</button>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="sidebar-module">
                <h4>Categories</h4>
                <ol class="list-unstyled">
                    <c:forEach items="${object.categories}" var="list">
                        <li><a href="#">${list}</a></li>
                    </c:forEach>
                </ol>
            </div>
            <div class="sidebar-module">
                <h4>Tags</h4>
                <%--need to beautify--%>
                <ol class="list-unstyled">
                    <c:forEach items="${object.tags}" var="list">
                        <li><a href="#">${list}</a></li>
                    </c:forEach>
                </ol>
            </div>
            <div class="sidebar-module">
                <h4>Links</h4>
                <ol class="list-unstyled">
                    <c:forEach items="${object.linkList}" var="list">
                        <li><a href="${list.url}" target="_blank">${list.title}</a></li>
                    </c:forEach>
                </ol>
            </div>
        </div>
    </div>

</div>

<footer class="blog-footer">
    <p>Copyright ©2017 WuErli. All rights reserved.</p>
</footer>

<%--js--%>
<script src="../../js/jquery-2.1.3.min.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<script src="../../js/blog.js"></script>
</body>
</html>