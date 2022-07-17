<%-- 
    Document   : CheckAttend
    Created on : Jul 14, 2022, 9:03:32 PM
    Author     : sneezes
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Check Attend</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>

    <body>
        <c:set var = "i" scope = "page" value = "0"/>
      <header> 
            <div class="container-fluid">
                <a href="TeachingSchedule">Schedule </a>

                <a  href="GroupStudent">Display Group</a>
            </div>
        </header>
        <div class
        <div class="container-fluid">
            <h1>Single Activity Attendance</h1>
            <p >Attendance for <b>${s.getGroup().getSubject().getCode()}</b> with Lecturer <b>${s.getGroup().getInstructor().getUserName()}</b> at Slot <b>${s.getSlot()}</b> on Day <b>${s.getDate()}</b> in Room <b>${s.getRoom().getCode()}</b> at ${s.getGroup().getCampus()}</p>
            <div style="width: 100%;">
                <form action="CheckAttend" method="post">
                    <table class="table"  >
                        <thead>
                            <tr>
                                <th style="width:5%">No</th>
                                <th style="width:5%">Group</th>
                                <th style="width:10%">Code</th>
                                <th style="width:17.5%">Name</th>
                                <th style="width:12.5%">Image</th>
                                <th style="width:5%">Status</th>
                                <th style="width:10%">Commnent</th>
                                <th style="width:10%">Taker</th>
                                <th style="width:25%">RecordTime</th>
                            </tr>
                        </thead>
                        <tbody>
                        <input name="sid" value="${param['sid']}" type="hidden">
                        <input name="instructorid" value="${s.getGroup().getInstructor().getId()}" type="hidden">
                        <c:forEach var="stu" items="${stulist}">
                            <tr>
                                <td style="width:5%">${stu.getId()}</td>
                                <td style="width:10%">${s.getGroup().getCode()}</td>
                                <td style="width:10%">${stu.getCode()}</td>
                                <td style="width:12.5%">${stu.getName()}</td>
                                <td style="width:12.5%"><img src="${stu.getImg()}" width="150px"></td>
                                <td style="width:5%"><input type="checkbox" class="form-check" name="${stu.getCode()}"></d>
                                <td style="width:15%"></td>
                                <td style="width:5%">${s.getGroup().getInstructor().getUserName()}</td>    
                                <td style="width:30%"></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <input type="submit" value="Submit">
                </form>

            </div>
        </div>



        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    </body>

</html>