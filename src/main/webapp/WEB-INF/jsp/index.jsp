<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>东北林业大学信息与计算机工程学院软件工程专业</title>
    <!--图标库-->
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">

    <link rel="stylesheet" href="../../css/theme.css">


    <style>
        #img {
            background-image: url("../../resources/imges/img-1.jpg");
            height: 400px;
            background-size: 100% 100%;
        }

        #aside {
            background-image: url("../../resources/imges/hehe.jpg");
            background-size: 100% 100%;
        }
        .article table{

            text-align: center;
            display: block;
        }
        .article table a{
            text-decoration: none;
            color: black;

        }
        .article{
            background-image: url("../../resources/imges/xinwen.jpg");
            background-size: 100% 100%;
            padding:0 200px 0 100px;
            font-size:20px;
        }
        .area{
            background-image: url("../../resources/imges/xinwen.jpg");
            background-size: 100% 100%;
        }
#footer{
    background-image: url("../../resources/imges/xinwen.jpg");
    background-size: 100% 100%;
}

    </style>

</head>

<body>

<div class="container" id="container">

    <!--    <div id="headerNav"></div>-->


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
                        <!--                        <li><a href="">教师介绍</a></li>-->
                    </ul>
                </div>
            </li>

            <li id="li-5"><a href="/login">用户登陆</a></li>

        </ul>

    </nav>


    <section>
        <div id="img">
<%--            <!--    <img src="https://i.pravatar.cc/150?img=31" alt="风采展示">-->--%>
        </div>

    </section>

    <article class="article">

        <table>
            <thead>
            <tr>
                <%--                <td>编号</td>--%>
                <td>标题</td>
                <%--                <td>序号</td>--%>
                <td>时间</td>
                <%--                        <td>操作</td>--%>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${news}" var="n" varStatus="v">
                <tr>
                    <td>${n.name }</td>
                    <td>&nbsp&nbsp&nbsp&nbsp${n.insertTime }&nbsp&nbsp&nbsp&nbsp</td>


                    <td><a class="btn" href="/QueryNews?id=${n.id }"> 详情</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>


    </article>


    <aside class="area" id="aside">
        <%--        <img src="resources/imges/building.jpg" alt="building.jpg">--%>
    </aside>


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
    // headerNav();


</script>


</body>

</html>