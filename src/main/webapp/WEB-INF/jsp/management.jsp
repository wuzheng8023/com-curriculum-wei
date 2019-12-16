<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/12/14
  Time: 18:45
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>后台公告管理</title>

    <link rel="stylesheet" href="../../css/theme.css">
    <link rel="stylesheet" href="../../css/smallTheme.css">

    <style>
        #div-container{
            text-align: center;
            width: 1550px;

            border: 2px solid red;
        }

        #background-img923 img{
            float: left;
            width: 300px;
            height: 250px;
            margin-left: 15px;
            margin-right: 15px;
        }

        #background-img923{
            overflow: auto;
            border: 1px solid red;
            width: 1540px;
            padding: 20px 15px;

        }


    </style>

</head>
<body>


<div class="container">

    <header>
        <div class="logo"><a href="/index">
            <img src="../../resources/imges/iceclogo.png" alt>
            <img src="../../resources/imges/logo-name.png" alt>
        </a>
        </div>


    </header>

    <nav class="area">
        <ul>

            <li><a href="/index">网站首页</a></li>

            <li id="li-1"><a href="#">专业介绍</a>

                <div id="area-1" class="c-area-1">
                    <ul id="area-1-1" class="c-area-2">
                        <li><a href="../../html/Introducation/IntroducationIn.html">专业简介</a></li>
                        <li><a href="../../html/Introducation/IntroducationDirection.html">专业方向</a></li>
                    </ul>

                </div>
            </li>


            <li id="li-2"><a href="#">教师队伍</a>
                <div id="area-2" class="c-area-1">
                    <ul id="area-2-1" class="c-area-2">
                        <li><a href="../../html/Teacher/TeacherMien.html">教师风采</a></li>
                        <li><a href="../../html/Teacher/TeacherIntroducation.html">教师介绍</a></li>
                    </ul>

                </div>
            </li>

            <li id="li-3"><a href="#">实验教室</a>
                <div id="area-3" class="c-area-1">
                    <ul id="area-3-1" class="c-area-2">
                        <li><a href="../../html/lab/923.html">923实验室</a></li>
                        <li><a href="../../html/lab/925.html">925实验室</a></li>
                    </ul>
                </div>
            </li>

            <li id="li-4"><a href="#">关于我们</a>
                <div id="area-4" class="c-area-1">
                    <ul id="area-4-1" class="c-area-2">
                        <li><a href="../../html/MyOwn.html">开发介绍</a></li>
                    </ul>
                </div>
            </li>

            <li id="li-5"><a href="#">用户登陆</a></li>

        </ul>

    </nav>

    <div id="div-container">

        <form action="/AddDeleteNews" method="post">
            新闻名称：<input name="NewsName" required><br />
            新闻内容：<input name="NewsContent" required><br />
            <button type="submit"  name="button" value="1">添加</button>
<%--            <button type="submit"  name="button" value="2">删除</button>--%>
        </form>
        <form action="/AddDeleteNews" method="post">
            新闻编号：<input name="NewsName" required><br />
<%--            <button type="submit"  name="button" value="1">添加</button>--%>
            <button type="submit"  name="button" value="2" >删除</button>
        </form>

        <div id="background-img923">

            <div id="nav-1">
                <div id="nav-2">
                    <h2 class="fl">软件工程专业</h2>
                    <span class="fr">当前位置：
                        <a href="../../index.html">网站首页</a>
                -&gt;
                <a href="#">实验教室</a>
                -&gt;
                <a href="923.html">923实验室</a>
                </span>
                </div>
                <div id="clear"></div>



                <table>
                    <thead>
                    <tr>
                        <td>序号</td>
                        <td>时间</td>
                        <td>编号</td>
                        <td>标题</td>
<%--                        <td>操作</td>--%>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${newsList }" var="n"  varStatus="v">
                        <tr>

                            <td>${v.count }</td>
                            <td>${n.insertTime }</td>
                            <td>${n.id }</td>
                            <td>${n.name }</td>
                            <td><a class="btn" href="/QueryNews?id=${n.id }">详情</a>  </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

            </div>

<%--        <form action="/DeleteNews" method="post">--%>
<%--            <select name="uid">--%>
<%--                <c:forEach items="${users }" var="u">--%>
<%--                    <option value="${u.id }">${u.name }</option>--%>
<%--                </c:forEach>--%>
<%--            </select>--%>
<%--            新用户名：<input name="username" required><br />--%>
<%--            <button type="submit">更新</button>--%>
<%--        </form>--%>

<%--        <table>--%>
<%--            <thead>--%>
<%--            <tr>--%>
<%--                <td>编号</td>--%>
<%--                <td>标题</td>--%>
<%--&lt;%&ndash;                <td>内容</td>&ndash;%&gt;--%>
<%--            </tr>--%>
<%--            </thead>--%>
<%--            <tbody>--%>
<%--            <c:forEach items="${news}" var="n" varStatus="v">--%>
<%--                <tr>--%>
<%--                    <td>${v.count }</td>--%>
<%--                    <td>${n.name }</td>--%>
<%--                    <td><a class="btn" href="/updateuser?id=${n.id }">修改</a> <a class="btn" href="/updateuser?id=${u.id }">修改</a> </td>--%>
<%--                </tr>--%>
<%--            </c:forEach>--%>
<%--            </tbody>--%>
<%--        </table>--%>


    </div>

    <footer class="area" id="footer">

        <pre>

            联系我们

        微博：111111111111  微信：11111111111  电话：111111111111  邮箱：111111111111.com

        东北林业大学

        软件工程专业 2019&copy;
        </pre>

    </footer>
</div>

<script src="../../js/theme.js"></script>
<script src="../../js/jquery-3.4.1.min.js"></script>
<script>
    themeNav();

</script>




</body>
</html>
<html>
