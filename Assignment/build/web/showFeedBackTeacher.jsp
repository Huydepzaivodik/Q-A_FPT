<%-- 
    Document   : showFeedBackTeacher
    Created on : Jul 18, 2023, 10:09:05 PM
    Author     : Quang Huy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <style>
            h1{
                font-family: sans-serif;
                font-weight: 500;
                line-height: 1.1;
                color: inherit;
            }
            div.row{
                display: flex;
                margin-left: 100px;
                width: 1000px;
            }
            .col-md-8{
                margin-right: 300px;
            }
            .auto-style1{
                font-size: 13px;
            }
            img.gg{

            }
            hr.line {
                border: 8px solid gainsboro;
                border-radius: 5px;
                margin-left: 100px;
                width: 1000px;
            }




            div {
                display: block;
            }
            a {
                color: #337ab7;
                text-decoration: none;
            }
            a {
                background-color: transparent;
            }

            .label-success {
                background-color: #5cb85c;
            }
            .label {
                margin-left: 8px;
                display: inline;
                padding: 0.2em 0.6em 0.3em;
                font-size: 60%;
                font-weight: 700;
                line-height: 1;
                color: #fff;
                text-align: center;
                white-space: nowrap;
                vertical-align: baseline;
                border-radius: 0.25em;
            }
            div.sticky {
                position: -webkit-sticky;
                position: sticky;
                top: 0;
                padding-bottom: 22px;
                background-color: gainsboro;
                margin-left: 100px;
                margin-right: 100px;

            }
            img.logoFPT{
                -webkit-filter: blur(4px);
                filter: blur(4px);

            }
            .listFb {
                margin-top: 20px;
                margin-left: 100px;
                background-color: transparent;
                width: 85%;
                border: solid 2px;
            }
            tr {
                background-color: #fff;
                border-bottom: 1px solid #f0f0f0;
                border-spacing: 0;
                border-collapse: collapse;

            }
            tbody th {
                text-align: left;
                padding: 2px;
            }

            th {
                border-right: 1px solid #fff;
                text-align: center;
                padding: 2px;
                text-transform: uppercase;
                height: 23px;
                background-color: #6b90da;
                font-weight: normal;
            }
        </style>

    </head>
    <body>
        <div class="row">
            <div class="col-md-8">
                <h1>
                    <span>FPT University Academic Portal</span>
                </h1>
            </div>
            <div class="col-md-4">
                <table>
                    <tbody>
                        <tr>
                            <td colspan="2" class="auto-style1">
                                <strong>FAP mobile app(myFAP) is ready at</strong>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="https://apps.apple.com/app/id1527723314">
                                    <img class="oip" src="apple.jpg" style="width: 120px;
                                         height: 40px" alt="apple store">
                                </a>
                            </td>
                            <td>
                                <a href="https://play.google.com/store/apps/details?id=com.fuct">
                                    <img class="gg" src="gg.jpg" style="width: 120px;
                                         height: 40px" alt="google store">
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div  class="sticky">
            <div  id="ctl00_divUser" style="float: right; margin-right: 5px;">
                <a href="#"> 
                    <span id="ctl00_lblLogIn" class="label label-success"> ${teacher.getTeacher_name()}</span> 
                </a>
            </div>
            <div style="float: left" class="backToHome">
                <a href="signIn.jsp">
                    <font style="font-family: sans-serif; font-size: 12px; color: black">Back &nbsp;|<b>Teacher FeedBack</b></font>
                </a>
            </div>
        </div>

        <table  class="listFb">
            <tbody>
            <th>Student Name</th>
            <th>Feed Back</th>
        </tbody>

        <tbody>
            <c:forEach items="${account}" var="a">
                <c:forEach items="${comment}" var="c">
                    <c:choose>
                        <c:when test="${c.getAccount_id() eq a.getAccount_id() && c.getTeacher_id() eq teacher.getTeacher_id()}">
                            <tr>
                                <td>${a.getStudent_name()}</td>
                                <td>${c.getCtittle()}</td>
                            </tr>
                        </c:when>
                    </c:choose>
                </c:forEach>
            </c:forEach>
        </tbody>

    </table>


</body>
</html>
