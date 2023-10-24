<%-- 
    Document   : addnewbird
    Created on : Oct 21, 2023, 10:42:07 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>-->
<html>
    <head>
    <script src="FE/js/main.js"></script>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add Bird</title>
  <link href="FE/img/favicon.ico" rel="icon">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
    integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

  <!-- Google Web Fonts -->
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;500;600;700&family=Rubik&display=swap"
    rel="stylesheet">

  <!-- Icon Font Stylesheet -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
  <link href="FE/lib/flaticon/font/flaticon.css" rel="stylesheet">

  <!-- Libraries Stylesheet -->
  <link href="FE/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

  <!-- Customized Bootstrap Stylesheet -->
  <link href="FE/css/bootstrap.min.css" rel="stylesheet">

  <!-- Template Stylesheet -->
  <link href="FE/css/userprofile.css" rel="stylesheet">

  <script src="https://kit.fontawesome.com/96a8e8f111.js" crossorigin="anonymous"></script>



  <link rel="stylesheet" href="FE/css/style.css">
  <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->


  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Raleway:ital,wght@0,500;1,900&display=swap" rel="stylesheet">

  <style>
    .centered-text {
      display: flex;
      justify-content: center;
    }
  </style>
    </head>

    <body class="">
        <div class="container-fluid bg-dark px-0">
            <div class="row gx-0">
                <div class="col-lg-3 bg-dark d-none d-lg-block">


                    <a href="index.html" class="navbar-brand w-100 h-100 m-0 p-0 d-flex align-items-center justify-content-center">
                        <img src="FE/img/finallogo.png" style="width: 100px; margin-right: -40px; margin-bottom:50px;">
                        <h1 class="m-0 display-4 text-primary text-uppercase">BIRDFIGHTER</h1>
                    </a>



                </div>
                <div class="col-lg-9">
                    <div class="row gx-0 bg-secondary d-none d-lg-flex">
                        <div class="col-lg-7 px-5 text-start">
                            <div class="h-100 d-inline-flex align-items-center py-2 me-4">
                                <i class="fa fa-envelope text-primary me-2"></i>
                                <h6 class="mb-0">birdfight@compe.com</h6>
                            </div>
                            <div class="h-100 d-inline-flex align-items-center py-2">
                                <i class="fa fa-phone-alt text-primary me-2"></i>
                                <h6 class="mb-0">+123 321 333</h6>
                            </div>
                        </div>
                        <div class="col-lg-5 px-5 text-end">
                            <div class="d-inline-flex align-items-center py-2">
                                <a class="btn btn-light btn-square rounded-circle me-2" href="">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                                <a class="btn btn-light btn-square rounded-circle me-2" href="">
                                    <i class="fab fa-twitter"></i>
                                </a>
                                <a class="btn btn-light btn-square rounded-circle me-2" href="">
                                    <i class="fab fa-linkedin-in"></i>
                                </a>
                                <a class="btn btn-light btn-square rounded-circle me-2" href="">
                                    <i class="fab fa-instagram"></i>
                                </a>
                                <a class="btn btn-light btn-square rounded-circle" href="">
                                    <i class="fab fa-youtube"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <nav class="navbar navbar-expand-lg bg-dark navbar-dark p-3 p-lg-0 px-lg-5">

                        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav mr-auto py-0">
                                <a href="/FE/postlogin.html" class="nav-item nav-link active">Home</a>
                                <a href="/FE/leaderboard.html" class="nav-item nav-link">Bảng xếp hạng</a>
                                <a href="/FE/schedule.html" class="nav-item nav-link">Lịch thi đấu</a>
                                <a href="/FE/memberShip.html" class="nav-item nav-link">Hội viên</a>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <!-- <a href="blog.html" class="dropdown-item">News</a> -->
                                        <a href="/FE/rules.html" class="dropdown-item">Luật thi đấu</a>
                                        <a href="/FE/feedback.html" class="dropdown-item">Feedback</a>
                                        <a href="/FE/news.html" class="dropdown-item">Tin Tức</a>
                                    </div>
                                </div>
                                <a href="contact.html" class="nav-item nav-link">Liên Hệ</a>
                            </div>
                           
<!--                                Nút User Menu Ở Trên Góc Phải Màn Hình-->
                                <div class="nav-item dropdown">
                    
                                    <a href="#" class="btn btn-primary nav-link dropdown-toggle" data-bs-toggle="dropdown" style="width: 150px;">${sessionScope.USER.userName}</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <!-- <a href="blog.html" class="dropdown-item">News</a> -->
                                         <a class="dropdown-item" href="birdprofile.html">Bird Profile</a>
                                    <a class="dropdown-item" href="addnewbird.html">Add Bird </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="/FE/index.html">Log out</a>
                                    </div>
                                </div>

                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <section class="h-25 gradient-custom-2">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col col-lg-9 col-xl-7">
                        <div class="card">
                            <div class="rounded-top text-white d-flex flex-row" style="background-color: #000000; height:200px;">
                                <div class="ms-4 mt-5 d-flex flex-column profile-pic" style="width: 150px;">

                                    <div class="edit-pic">
                                        <form action="upload.php" method="post" enctype="multipart/form-data">
                                            <label for="fileToUpload" class=" mt-4 mb-2">
                                                <div class="profile-pic">
                                                    <img
                                                        src="https://images.dolenglish.vn/rs:auto:::0/w:1440/q:70/aHR0cHM6Ly9zdWlqbTljbG91b2JqLnZjZG4uY2xvdWQvUFVCTElDL01FRElBLzFiNTFmNjI4LWNmNTktNDg5MS1iZGIyLWQ3M2MwODcxOGIwMi5qcGc="
                                                        class="img-fluid img-thumbnail mb-2" style="width: 150px; height: 140px; margin-left: 10px;">
                                                    <span class="glyphicon glyphicon-camera"></span>
                                                    <span>Change Image</span>
                                                </div>
                                            </label>
                                            <input type="File" name="fileToUpload" id="fileToUpload">
                                        </form>
                                    </div>



                                    <!-- <img
                                      src="https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-1/331044364_1135565673791935_1693572774874518896_n.jpg?stp=c0.0.241.240a_dst-jpg_p240x240&_nc_cat=104&ccb=1-7&_nc_sid=fe8171&_nc_ohc=TXcwpKt4QK0AX_9toxW&_nc_ht=scontent.fsgn2-5.fna&_nc_e2o=s&oh=00_AfD0Xd7axgyl8Ex23jGXKvXEQGNbysWHsZ3zx9ymtvlsdQ&oe=652637DB"
                                      alt="Generic placeholder image" class="img-fluid img-thumbnail mt-4 mb-2"
                                      style="width: 150px; z-index: 1; margin-left: 10px;"> -->


                                    <button type="button" class="btn btn-outline-dark" data-mdb-ripple-color="dark"
                                            style="z-index: 1; margin-left: 17px;">
                                        View Profile
                                    </button>


                                    <input id="file" type="file" onchange="loadFile(event)" />
                                </div>
                                <div class="ms-3" style="margin-top: 130px; margin-left: 30px;">
                                    <h5 style="color: #f8f9fa;"></h5>
                                    <p></p>
                                </div>
                            </div>
                            <div class="p-4 text-black" style="background-color: #f8f9fa;">
                                <!-- <div class="d-flex justify-content-end text-center py-1">
                                  <div>
                                    <p class="mb-1 h5">100</p>
                                    <p class="small text-muted mb-0">Total Match</p>
                                  </div>
                                  <div class="px-3">
                                    <p class="mb-1 h5">51</p>
                                    <p class="small text-muted mb-0">Win</p>
                                  </div>
                                  <div>
                                    <p class="mb-1 h5">49</p>
                                    <p class="small text-muted mb-0">Lose</p>
                                  </div>
                                </div> -->
                            </div>
                            <div class="card-body p-4 text-black">
                                <div class="mb-5">

                                    <span class="centered-text">
                                        <p class="lead fw-normal mb-1">Add New Bird</p>
                                    </span>


                                    <div class="container-xl px-4 mt-4">

                                        <hr class="mt-0 mb-4">
                                        <div class="row">
                                            <div class="col-xl-12 border-bottom">
                                                <!-- Account details card-->
                                                <div class="card mb-4">
                                                    <div class="card-header">New Bird Details</div>
                                                    <div class="card-body">
                                                        <form action="DispatchServlet">
                                                            <!-- Form Group (birdname)-->
                                                            <div class="mb-3">
                                                                <label class="small mb-1" for="inputBirdname">Tên chim</label>
                                                                <input class="form-control" type="text" placeholder="Nhập tên chim"
                                                                       name="birdName">
                                                            </div>
                                                            <!-- Form Row-->
                                                            <div class="row gx-3 mb-3">
                                                                <!-- Form Group (Species)-->
                                                                <div class="col-md-6">
                                                                    <label class="small mb-1" for="inputSpecies">Loài chim</label>
                                                                    <input class="form-control" id="inputSpecies" type="text" placeholder="Nhập giống chim"
                                                                           value="" name="birdSpecie">
                                                                </div>
<!--                                                                 Form Group (BirdAge)-->
                                                                <div class="col-md-6">
                                                                    <label class="small mb-1" for="inputBirdAge">ID</label>
                                                                    <input class="form-control" id="inputBirdAge" type="text" placeholder="Nhập ID chim (for example: B00)"
                                                                           value="" name="birdId">
                                                                </div>
                                                                    
                                                            </div>
                                                            
                                                            <div class="row gx-3 mb-3">
                             
                                                               <div class="col-md-12">
                                                                    
                                                                   <input class="form-control" type="hidden" name="idMember" value="${sessionScope.USER.idMember}">
                                                                </div>
                                                                 
<!--                                                                <div class="col-md-6">
                                                                    <label class="small mb-1" for="inputHealStatus">Tình trạng sức khỏe</label>
                                                                    <input class="form-control" id="inputHealStatus" type="text"
                                                                           placeholder="Nhập tình trạng sức khỏe" value="">
                                                             </div>-->
                                                            </div>
<!--                                                             Form Group (CompetitionHistory)
                                                            <div class="mb-3">
                                                                <label class="small mb-1" for="inputCompetitionHistory">Lịch sử thi đấu (nếu có)</label>
                                                                <input class="form-control" id="inputCompetitionHistory" type="text"
                                                                       placeholder="Nhập lịch sử đấu" value="">
                                                            </div>

                                                             Form Group (OtherInfo)
                                                            <div class="mb-3">
                                                                <label class="small mb-1" for="inputOtherInfo">Thông tin khác (nếu có)</label>
                                                                <input class="form-control" id="inputOtherInfo" type="text"
                                                                       placeholder="Nhập thông tin khác" value="">
                                                            </div>-->

                                                            <!-- Save changes button-->

                                                            <div class="d-flex justify-content-between">
                                                                <button class="btn btn-outline-dark" data-mdb-ripple-color="dark" onclick="customNavigate()">
                                                                    Back
                                                                </button>

                                                                <script>
                                                                    function customNavigate() {
                                                                        window.history.back();
                                                                    }
                                                                </script>

                                                                <button class="btn btn-outline-dark" data-mdb-ripple-color="dark" value="AddBird" name="btAction">
                                                                    Add
                                                                </button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                                ${msg}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </section>

                                    <script src="FE/js/addbird.js"></script>

                                    </body>
                                    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
                                    <script src="FE/lib/easing/easing.min.js"></script>
                                    <script src="FE/lib/waypoints/waypoints.min.js"></script>
                                    <script src="FE/lib/counterup/counterup.min.js"></script>
                                    <script src="FE/lib/owlcarousel/owl.carousel.min.js"></script>
                                    
                                    
                                    </html>