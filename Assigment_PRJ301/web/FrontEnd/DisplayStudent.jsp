<!DOCTYPE html>
<html lang="en">

<head>
    <title>Show Student</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Fap </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText"
            aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="timetable.html">Time Table </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="liststudent.html">List Student</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container">
        <table class="table">
            <thead>
                <tr>
                    <th style="width:10%">Campus</th>
                    <th style="width:10%">Term</th>
                    <th style="width:20%">Department</th>
                    <th style="width:40%">Course</th>
                    <th style="width:20%">Group</th>
    
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td style="width:10%">Fu-HL</td>
                    <td style="width:10%">Summer2018 <br>Fall2018 <br>Summer2018 <br>Spring2019 <br>Summer2019 <br>Fall2018
                        <br>Spring2019 <br>
                    </td>
                    <td style="width:20%">BLOC<br> Multimedia Communication<br> English<br> Finance<br>BLOC<br> Multimedia
                        Communication<br> English<br> Finance<br>BLOC<br> Multimedia Communication<br> English<br> Finance
                    </td>
                    <td style="width:40%">Date Structure and Algorithms(CSD201) <br> math<br> Java Web
                        Application(PRJ301)<br>Date Structure and Algorithms(CSD201) <br> math<br> Java Web
                        Application(PRJ301)<br>Date Structure and Algorithms(CSD201) <br> math<br> Java Web
                        Application(PRJ301)<br>Date Structure and Algorithms(CSD201) <br> math<br> Java Web
                        Application(PRJ301)<br></td>
                    <td style="width:20%"> AI1607 SE1616 SA1530 AI1636 AI1607 SE1616 SA1530 AI1636 AI1607 SE1616 SA1530
                        AI1636</td>
                </tr>
            </tbody>
        </table>
        <h1>See Student List</h1>
        <div class="container-fluid">
            <div class="row">
                <table class="table">
                    <thead>
                        <tr>
                            <th style="width:10%">Index</th>
                            <th style="width:15%">Image</th>
                            <th style="width:15%">Member</th>
                            <th style="width:15%">Code</th>
                            <th style="width:15%">Surname</th>
                            <th style="width:15%">Middlename</th>
                            <th style="width:15%">Given Name</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td style="width:10%">1</td>
                            <td style="width:15%">Image Student</td>
                            <td style="width:15%">Longlvhe151065</td>
                            <td style="width:15%">HE151065</td>
                            <td style="width:15%">Le</td>
                            <td style="width:15%">Vu</td>
                            <td style="width:15%">Long</td>
                        </tr>
                        <tr>
                            <td style="width:10%">2</td>
                            <td style="width:15%">Image Student</td>
                            <td style="width:15%">LyNXHE151043</td>
                            <td style="width:15%">HE151043</td>
                            <td style="width:15%">Nguyen</td>
                            <td style="width:15%">Xuan</td>
                            <td style="width:15%">Ly</td>
                        </tr><tr>
                            <td style="width:10%">3</td>
                            <td style="width:15%">Image Student</td>
                            <td style="width:15%">QuanNBHE151118</td>
                            <td style="width:15%">HE151118</td>
                            <td style="width:15%">Nguyen </td>
                            <td style="width:15%">Ba</td>
                            <td style="width:15%">Quan</td>
                        </tr><tr>
                            <td style="width:10%">4</td>
                            <td style="width:15%">Image Student</td>
                            <td style="width:15%">HieuNMHE151180</td>
                            <td style="width:15%">HE151180</td>
                            <td style="width:15%">Nguyen</td>
                            <td style="width:15%">Minh</td>
                            <td style="width:15%">Hieu</td>
                        </tr><tr>
                            <td style="width:10%">5</td>
                            <td style="width:15%">Image Student</td>
                            <td style="width:15%">LuatNVHE151149</td>
                            <td style="width:15%">HE151149</td>
                            <td style="width:15%">Nguyen</td>
                            <td style="width:15%">Van</td>
                            <td style="width:15%">Luat</td>
                        </tr><tr>
                            <td style="width:10%">6</td>
                            <td style="width:15%">Image Student</td>
                            <td style="width:15%">LinhNTTHE151525</td>
                            <td style="width:15%">HE151525</td>
                            <td style="width:15%">Nguyen</td>
                            <td style="width:15%">Thi Thu</td>
                            <td style="width:15%">Linh</td>
                        </tr>
                    </tbody>
                </table>
            </div>
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