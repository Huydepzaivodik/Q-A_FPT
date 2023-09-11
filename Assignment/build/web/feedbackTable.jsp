<%-- 
    Document   : test
    Created on : Jul 5, 2023, 10:10:53 AM
    Author     : Quang Huy
--%>

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
                font-family: sans-serif;
                margin-top: 20px;
                margin-left: 100px;
                font-weight: 500;
                line-height: 1.1;
            }
            .msTeacher{
                margin-left: 100px;
                width: 100%;
                font-family: sans-serif;
                font-size: 12px;
            }
            font{
                margin-left: 100px;
                font-size: 12px;
            }
            hr{
                margin-left: 100px;
                opacity: 0.2;
                width: 1020px;
            }

            .radioFb{
                margin-left: 100px;
            }
            .textareaFb{
                margin-left: 100px;
            }

            .support1{
                margin-top: 50px;
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
                <span id="ctl00_lblCampusName" class="label label-success">Campus:${department} </span>
            </div>

            <div style="float: left" class="backToHome">
                <a href="login?account_name=${account.getAccount_name()}&department=${department}" >
                    Back
                </a>|<b>Student feedback</b>
            </div>
        </div>




        <h2>EDIT FEEDBACK</h2>



        <form action="feedback" onsubmit="return validateForm()" method="post" >
            <table class="msTeacher" >
                <tr>
                    <td >Batch(Lớp): IS1703</td>
                    <td >Month:</td>
                </tr>
                <tr>
                    <td >Subject(Môn học): ${subject.getSubject_name()}</td>
                    <td >Teacher(Giảng viên): ${teacher.getLecturer()}</td>
                </tr>
            </table>
            <hr>    
<!--            <div>
                <font style="font-style: italic; font-weight: bold">
                Tick the phrase, which best suits the teacher (Đánh dấu vào ô thích hợp)
                </font>
            </div>-->

<!--            <table class="radioFb" cellspacing="1" cellpadding="2" border="0" style="border-width:1px;border-style:solid;width:80%;">
                <tbody>
                    <tr>
                        <td> 
                            <table>
                                <tr>
                                <i style="font-size:13px;">Regarding the teacher's punctuality</i>
                    </tr>

                    <tr>
                        <td>
                            <input type="radio" id="Alwayspunctual" name="time">
                            <label for="Alwayspunctual"> <b style="font-size:13px;"> Always punctual (Luôn đúng giờ) </b></label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <input type="radio" id="Mostlypunctual" name="time">
                            <label for="Mostlypunctual"> <b style="font-size:13px;"> Mostly punctual (Phần lớn đúng giờ) </b></label>    
                        </td>   
                    </tr>

                    <tr>
                        <td>
                            <input type="radio" id="Rarelypunctual" name="time">
                            <label for="Rarelypunctual"> <b style="font-size:13px;"> Rarely punctual (Ít khi đúng giờ) </b></label>    
                        </td>   
                    </tr>

                    <tr>
                        <td>
                            <input type="radio" id="Notatallpunctual" name="time">
                            <label for="Notatallpunctual"> <b style="font-size:13px;">Not at all punctual (Không bao giờ đúng giờ)</b></label>    
                        </td>   
                    </tr>                                                                      
            </table>
        </td>  

        <td> 
            <table>
                <tr>
                <i style="font-size:13px;">Teaching skills of teacher</i>
                </tr>

                <tr>
                    <td>
                        <input type="radio" id="verygood" name="quality">
                        <label for="verygood"> <b style="font-size:13px;"> Very good (Tốt) </b></label>
                    </td>
                </tr>

                <tr>
                    <td>
                        <input type="radio" id="good" name="quality">
                        <label for="good"> <b style="font-size:13px;"> Good (Khá) </b></label>    
                    </td>   
                </tr>

                <tr>
                    <td>
                        <input type="radio" id="avarage" name="quality">
                        <label for="avarage"> <b style="font-size:13px;"> Avarage (trung bình)</b></label>    
                    </td>   
                </tr>

                <tr>
                    <td>
                        <input type="radio" id="poor" name="quality">
                        <label for="poỏ"> <b style="font-size:13px;">Poor (Kém)</b></label>    
                    </td>   
                </tr>                                                                      
            </table>
        </td>                                     
    </tr>


    <tr>
        <td> 
            <table>
                <tr>
                <i style="font-size:13px;">The teacher adequately covers the topics required by the syllabus</i>
    </tr>

    <tr>
        <td>
            <input type="radio" id="Fullycovered " name="weight">
            <label for="Fullycovered "> <b style="font-size:13px;"> Fully covered (Đảm bảo hoàn toàn) </b></label>
        </td>
    </tr>

    <tr>
        <td>
            <input type="radio" id="Mostlycovered" name="weight">
            <label for="Mostlycovered"> <b style="font-size:13px;"> Mostly covered (Đảm bảo phần lớn) </b></label>    
        </td>   
    </tr>

    <tr>
        <td>
            <input type="radio" id="Partiallycovered" name="weight">
            <label for="Partiallycovered"> <b style="font-size:13px;"> Partially covered (Chỉ đảm bảo một phần) </b></label>    
        </td>   
    </tr>

    <tr>
        <td>
            <input type="radio" id="Notatallcovered" name="weight">
            <label for="Notatallcovered"> <b style="font-size:13px;">Not at all covered (Không đảm bảo)</b></label>    
        </td>   
    </tr>    

</table>
</td>


<td>
    <table>
        <tr>
        <i style="font-size:13px;">Support from the teacher - guidance for practical exercises, answering questions out side of class</i>
        </tr>

        <tr>
            <td>
                <input type="radio" id="spVeryGood " name="sp">
                <label for="spVeryGood "> <b style="font-size:13px;"> Very Good (Tốt) </b></label>
            </td>
        </tr>

        <tr>
            <td>
                <input type="radio" id="spGood" name="sp">
                <label for="spGood"> <b style="font-size:13px;"> Good (Khá) </b></label>    
            </td>   
        </tr>

        <tr>
            <td>
                <input type="radio" id="spAvarage" name="sp">
                <label for="spAvarage"> <b style="font-size:13px;"> Average (Trung bình) </b></label>    
            </td>   
        </tr>

        <tr>
            <td>
                <input type="radio" id="spPoor" name="session.setAttribute("", )">
                <label for="spPoor"> <b style="font-size:13px;">Poor (Kém)</b></label>    
            </td>   
        </tr>                           
    </table>                                           
</td>             
</tr>

<tr>
    <td>
        <table>
            <tr>
            <i style="font-size:13px;">Teacher's response to student's questions in class</i>
</tr>

<tr>
    <td>
        <input type="radio" id="ansimmediately  " name="answer">
        <label for="ansimmediately "> <b style="font-size:13px;"> Answered immediately or just after the session (Trả lời ngay hoặc trả lời vào cuối buổi học) </b></label>
    </td>
</tr>

<tr>
    <td>
        <input type="radio" id="nextSession" name="answer">
        <label for="nextSession"> <b style="font-size:13px;"> Answered in the next session (Trả lời vào buổi học sau) </b></label>    
    </td>   
</tr>

<tr>
    <td>
        <input type="radio" id="someLeftAns" name="answer">
        <label for="someLeftAns"> <b style="font-size:13px;"> Some queries left unanswered (Một số câu hỏi không được trả lời) </b></label>    
    </td>   
</tr>

<tr>
    <td>
        <input type="radio" id="mostLeftAns" name="answer">
        <label for="mostLeftAns"> <b style="font-size:13px;">Most queries left unanswered (Phần lớn câu hỏi không được trả lời)</b></label>    
    </td>   
</tr>                           
</table>                                           
</td>  
</tr>   
</tbody>               
</table>-->
<br>           

<div class="textareaFb">
    <textarea id="feedBack" name="ctittle" rows="5" cols="70"></textarea>
    <br><button>Send Feedback</button>
    <div  style="color: red" id="feedbackCheckInput"></div>
    <input type="hidden" name="teacher_id" value="${teacher.getTeacher_id()}">
    <input type="hidden" name="account_id" value="${account.getAccount_id()}">
    <input type="hidden" name="account_name" value="${account.getAccount_name()}">
    <input type="hidden" name="department" value="${department}">

</div>

</form>

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



<div class="support1">
    <b>Mọi góp ý, thắc mắc xin liên hệ:</b>
    Phòng dịch vụ sinh viên: Email: 
    <a href="#">dichvusinhvien@fe.edu.vn</a>
    Điện thoại: <b>(024)7308.13.13</b>
</div>




</body>
</html>
