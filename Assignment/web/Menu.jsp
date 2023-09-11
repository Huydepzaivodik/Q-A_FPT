

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Account,java.util.ArrayList"%>
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
            .box{
                padding: 15px 17px;
                margin: 34px 0 50px;
                border-radius: 0 5px 5px 5px;
                background: rgba(255,255,255,0.7);
                position: relative;
                color: #234166;
                box-shadow: 0 0 5px #c4cacc;


            }

            .box h3 {
                height: 34px;
                line-height: 34px;
                display: inline-block;
                position: absolute;
                left: 0;
                top: -34px;
                padding: 0 15px;
                color: #fff;
                border-radius: 5px 5px 0 0;
            }
            .orangeTitle {
                background-position: 0 -400px;
                background-color: #ef8d01;
            }

            h3 {
                font-size: 16px;
                font-family: sans-serif;
                font-weight: 500;
            }

            #header .rmItem .rmLink, .box h3 {
                background-image: url(../images/sprite.png);
                background-repeat: repeat-x;
            }


            .form-control {
                display: block;
                width: 90%;
                height: 20px;
                padding: 6px 12px;
                font-size: 14px;
                line-height: 1.42857143;
                color: #555;
                background-color: #fff;
                background-image: none;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
                transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            }
            input{
                font-family: inherit;
            }

            .feedback{
                margin-left: 220px;
            }
            .fed{
                margin-left: 140px;
            }

            img{
                margin-top: 20px;
                height: 280px;
            }

            .support{
                margin-top: -8px;
                margin-left: 450px;
                font-size: 13px;
                font-family: sans-serif;
            }

            .support1{
                margin-left: 250px;
            }

            .logo{
                width: 150px;
                height: 75px;
            }
            img.logoFPT{
                -webkit-filter: blur(4px);
                filter: blur(4px);
            }
            font{
                padding-left: 5px;
            }
        </style>


    </head>
    <body>

        <div class="container">

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
                                        <img class="oip" src="apple.jpg" style="width: 120px; height: 40px" alt="apple store">
                                    </a>
                                </td>
                                <td>
                                    <a href="https://play.google.com/store/apps/details?id=com.fuct">
                                        <img class="gg" src="gg.jpg" style="width: 120px; height: 40px" alt="google store">
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
                        <span id="ctl00_lblLogIn" class="label label-success"> ${account_name}  </span> 
                    </a>
                    <span id="ctl00_lblCampusName" class="label label-success"> Campus: ${department}</span>

                </div>
                <div style="float: left" class="backToHome">
                    <a href="signIn.jsp">
                        <font style="font-family: sans-serif; font-size: 12px; color: black">Logout &nbsp;|<b>Home</b></font>
                    </a>
                </div>
            </div>
        </div>

        <div class="logo" >  <img class="logoFPT" src="Logo_FPT_Education.png" alt="fpt"/>  </div>

        <div class="box" style="float: right;width: 600px;">
            <h3 class="orangeTitle">Academic Information</h3>
            <div> 
                <input type="text" name="ctl00$mainContent$txtVideo" id="ctl00_mainContent_txtVideo" class="form-control" placeholder="Nhập URL video quá trình test-covid đã upload lên Youtube">
                <input type="radio" name="f0" id="f0" class="f0" > 
                <label for="f0">  Cập nhật tình trạng F0(Có hiệu lực 7 ngày kể từ thời điểm đăng ký)</label>
                <hr>

                <table>
                    <tr>
                        <td valign="top" style="width:55%">
                            <h5>Registration/Application(Thủ tục/đơn từ)</h5>
                            ......
                        </td >
                        <td valign="top">
                            <h5>Send question to Administrator(Gửi câu hỏi đến phòng DVSV)</h5>
                            <a href="qnaStu?account_name=${account_name} &department=${department}">Q&A</a>
                        </td>
                    </tr>                   
                </table>
                <hr>
                <h5 class="feedback">Feedback(Ý kiến)</h5>
                <a href="login?account_name=${account_name}&department=${department}" class="fed">Feedback about teaching </a> &nbsp;(Ý kiến về việc giảng dạy)

            </div>
        </div>

        <div class="support">
            <table>
                <tr>
                    <th>© Powered by</th>
                    <th><a href="https://fpt.edu.vn/"> FPT University</a></th>
                    <td>|</td>
                    <th><a href="https://cmshn.fpt.edu.vn/">CMS</a></th>
                    <td>|</td>
                    <th><a href="https://library.fpt.edu.vn/">library</a></th>
                    <td>|</td> 
                    <th><a href="https://library.books24x7.com/login.asp?ic=0">book24x7</a></th>
                </tr>           
            </table>
        </div>

        <div class="support1">
            <b>Mọi góp ý, thắc mắc xin liên hệ:</b>
            Phòng dịch vụ sinh viên: Email: 
            <a href="#">dichvusinhvien@fe.edu.vn</a>
            Điện thoại: <b>(024)7308.13.13</b>
        </div>

    </body>
</html>
