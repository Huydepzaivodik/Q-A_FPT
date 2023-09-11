

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

            h2{
                margin-left: 200px;
                font-weight: 400;
            }
            .updateFb{
                margin-left: 200px;
            }

            .support1{
                margin-top: 100px;
                margin-left: 200px;
            }

            .backToHome{
                padding-top: 4px;
                padding-left: 8px;
                font-family: sans-serif;
                font-size: 11px;
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
            <div  id="ctl00_divUser" style="float: right;
                  margin-right: 5px;">
                <a href="#"> 
                    <span id="ctl00_lblLogIn" class="label label-success"> ${account.getAccount_name()} </span> 
                </a>
                <span id="ctl00_lblCampusName" class="label label-success"> Campus: ${department} </span>
            </div>

            <div style="float: left" class="backToHome">
                <a href="login?account_name=${account.getAccount_name()}&department=${department}" >
                    Back
                </a>|<b>Edit comment feedback</b>
            </div>  
        </div>
        <h1 hidden>${teacher_id}</h1>

        <h2 style="font-family: sans-serif">EDIT COMMENT</h2>
        <div class="updateFb" onsubmit="return validateForm()">
            <div  class="mess" style="color: red"> ${mess}</div>
            <form action="updateFed" method="post">
                <textarea cols="40" rows="5" name="ctittle" id="feedBack"> <c:forEach items="${commentList}" var="c"> ${c.getCtittle()}</c:forEach></textarea><br>
                    <div id="feedbackCheckInput" style="color: red"></div>
                    <input type="hidden" name="account_name" value="${account.getAccount_name()}">
                <input type="hidden" name="department" value="${department}">
                <input type="hidden" name="account_id" value="${account.getAccount_id()}">
                <input type="hidden" name="teacher_id" value="${teacher_id}">
                <button>Edit comment</button>
            </form>                
        </div>

        <div class="support1">
            <b>Mọi góp ý, thắc mắc xin liên hệ:</b>
            Phòng dịch vụ sinh viên: Email: 
            <a href="#">dichvusinhvien@fe.edu.vn</a>
            Điện thoại: <b>(024)7308.13.13</b>
        </div>

        <script>
            function validateForm() {
                let passed = true;
                if (document.getElementById("feedBack").value === "") {
                    passed = false;
                    document.getElementById("feedbackCheckInput").innerHTML = "This field must be not empty";
                } else {
                    document.getElementById("feedbackCheckInput").innerHTML = "";
                }
                return passed;
            }
        </script>        



    </body>
</html>
