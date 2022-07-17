<%-- 
    Document   : Checked
    Created on : Jul 14, 2022, 9:02:43 PM
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
        <div class="container-fluid">
            <h1>Single Activity Attendance</h1>
            <p >Attendance for <b>${s.getGroup().getSubject().getCode()}</b> with Lecturer <b>${s.getGroup().getInstructor().getUserName()}</b> at Slot <b>${s.getSlot()}</b> on Day <b>${s.getDate()}</b> in Room <b>${s.getRoom().getCode()}</b> at ${s.getGroup().getCampus()}</p>
            <div class="row">
                <form action="UpdateCheckattend" style="position: relative;padding-bottom: 50px;" method="post">
                    <input name="sid" value="${param['sid']}" type="hidden">
                    <input name="instructorid" value="${s.getGroup().getInstructor().getId()}" type="hidden">
                    <table class="table">
                        <thead>
                            <tr>
                                <th style="width:5%">No</th>
                                <th style="width:5%">Group</th>
                                <th style="width:10%">Code</th>
                                <th style="width:12.5%">Name</th>
                                <th style="width:12.5%">Image</th>
                                <th style="width:5%">Status</th>
                                <th style="width:10%">Commnent</th>
                                <th style="width:10%">Taker</th>
                                <th style="width:30%">RecordTime</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="ck" items="${cklist}">
                                <tr>
                                    <td style="width:5%">${ck.getStudent().getId()}</td>
                                    <td style="width:10%">${s.getGroup().getCode()}</td>
                                    <td style="width:10%">${ck.getStudent().getCode()}</td>
                                    <td style="width:12.5%">${ck.getStudent().getName()}</td>
                                    <td style="width:12.5%"><img src="${ck.getStudent().getImg()}" width="150px"></td>
                                    <td style="width:5%"><input type="checkbox" class="form-check" ${ck.isCheck()?"checked":""} name="${ck.getStudent().getCode()}"></d>
                                    <td style="width:15%"></td>
                                    <td style="width:5%">${s.getGroup().getInstructor().getUserName()}</td>    
                                    <td style="width:30%">${ck.getRecordtime()}</td>
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                    <input style="position: absolute; bottom: 5px; right: 0;" type="submit" value="Submit" style="align-items: flex-end" class="btn btn-primary">
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