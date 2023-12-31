<%-- Document : index.jsp Created on : Oct 20, 2023, 9:47:15 PM Author : Admin --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Home</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link
            href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;500;600;700&family=Rubik&display=swap"
            rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css"
              rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
              rel="stylesheet">
        <link href="FE/lib/flaticon/font/flaticon.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="FE/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="FE/css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="FE/css/style.css" rel="stylesheet">

        <script src="https://kit.fontawesome.com/96a8e8f111.js" crossorigin="anonymous"></script>

    </head>

    <body>
        <!-- Header Start -->
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
                                <a href='<c:url value="/DispatchServlet?btAction=Home"/>' class="nav-item nav-link active">Home</a>
                                <a href='<c:url value="/DispatchServlet?btAction=LeaderBoard"/>' class="nav-item nav-link">Bảng xếp hạng</a>
                                <a href='<c:url value="/DispatchServlet?btAction=Home"/>#schedule' class="nav-item nav-link">Lịch thi đấu</a>
                                <a href='<c:url value="/DispatchServlet?btAction=Home"/>#member' class="nav-item nav-link">Hội viên</a>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <!-- <a href="blog.html" class="dropdown-item">News</a> -->
                                        <a href="rule_pre.jsp" class="dropdown-item">Luật thi đấu</a>
                                        <a href='<c:url value="/DispatchServlet?btAction=FeedBack"/>' class="dropdown-item">Feedback</a>
                                        <a href='<c:url value="/DispatchServlet?btAction=Blog"/>' class="dropdown-item">Tin Tức</a>
                                    </div>
                                </div>
                                <a href="contact_pre.jsp" class="nav-item nav-link">Liên Hệ</a>
                            </div>
                            <a href="Login2.jsp" class="btn btn-primary py-md-3 px-md-5 d-none d-lg-block">Login/Signup</a>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Header End -->

        <!-- Carousel Start -->
        <div class="container-fluid p-0 mb-5">
            <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="w-100" src="FE/img/defaultpic.jpg" alt="Image">
                        <div
                            class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 900px;">
                                <h5 class="text-white text-uppercase">BIRD COMPETITION PLATFORM</h5>
                                <h1 class="display-2 text-white text-uppercase mb-md-4">Best Place To Show Us
                                    Your Birds </h1>
                                <a href="" class="btn btn-primary py-md-3 px-md-5 me-3">Join Us</a>
                                <a href="" class="btn btn-light py-md-3 px-md-5">Contact Us</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="FE/img/chaomao-bg (2).jpg" alt="Image">
                        <div
                            class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 900px;">
                                <h5 class="text-white text-uppercase">BIRD COMPETITION PLATFORM</h5>
                                <h1 class="display-2 text-white text-uppercase mb-md-4">Best Place To Show Us
                                    Your Birds</h1>
                                <a href="" class="btn btn-primary py-md-3 px-md-5 me-3">Join Us</a>
                                <a href="" class="btn btn-light py-md-3 px-md-5">Contact Us</a>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel"
                        data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#header-carousel"
                        data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
        <!-- Carousel End -->


        <!-- About Start -->
        <div class="container-fluid p-5">
            <div class="row gx-5">
                <div class="col-lg-5 mb-5 mb-lg-0" style="min-height: 500px;">
                    <div class="position-relative h-100">
                        <img class="position-absolute w-100 h-100 rounded" src="FE/img/chaomao-bg (1).jpg"
                             style="object-fit: cover;">
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="mb-4">
                        <h5 class="text-primary text-uppercase">About Us</h5>
                        <h1 class="display-3 text-uppercase mb-0">Welcome to Birdfighter</h1>
                    </div>
                    <h4 class="text-body mb-4">BIRDFIGHTER là một trong những platform đầu tiên tổ chức và vận
                        hành nhiều giải đấu dành cho người chơi chim. Cung cấp các dịch vụ như đăng kí tham gia
                        online, bảng xếp hạng cập nhật theo các mùa,....</p>
                        <div class="rounded bg-dark p-5">
                            <ul class="nav nav-pills justify-content-between mb-3">
                                <li class="nav-item w-50">
                                    <a class="nav-link text-uppercase text-center w-100 active"
                                       data-bs-toggle="pill" href="#pills-1">About Us</a>
                                </li>
                                <li class="nav-item w-50">
                                    <a class="nav-link text-uppercase text-center w-100" data-bs-toggle="pill"
                                       href="#pills-2">Why Choose Us</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="pills-1">
                                    <p class="text-secondary mb-0">Chào mừng bạn đến với "BIRDFIGHTER" - nơi
                                        tinh túy của sự cạnh tranh giữa những chú chim tài năng! Trang web của
                                        chúng tôi là điểm hẹn cho những người yêu mến thế giới chim và muốn theo
                                        dõi, tham gia và chia sẻ về các cuộc thi chim hấp dẫn. Tại đây, bạn sẽ
                                        được khám phá các cuộc thi chim độc đáo từ khắp nơi trên thế giới, theo
                                        dõi những màn trình diễn ngoạn mục của các loài chim, và tham gia cùng
                                        cộng đồng đam mê chim. Với thông tin mới nhất về các sự kiện, video,
                                        hình ảnh và bài viết thú vị, chúng tôi hy vọng sẽ giúp bạn nối kết với
                                        cộng đồng chim độc đáo và thú vị này. Hãy tham gia cùng chúng tôi để
                                        khám phá sự đẹp và tài năng của thế giới chim đầy màu sắc!</p>
                                </div>
                                <div class="tab-pane fade" id="pills-2">
                                    <p class="text-secondary mb-0">Chúng tôi cam kết mang đến cho bạn những trải
                                        nghiệm chất lượng và chuyên nghiệp nhất trong việc theo dõi và tham gia
                                        các cuộc thi chim. Chúng tôi đảm bảo cung cấp thông tin và nội dung đáng
                                        tin cậy.</p>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
        <!-- About End -->

        <!-- Top Bird Start -->
        <div id="leaderboard">
            <c:set var="leaderboard" value="${requestScope.LEADER_BOARD}" />
            <c:if test="${not empty leaderboard}">
                <div class="container-fluid p-5">
                    <div class="mb-5 text-center">
                        <h5 class="text-primary text-uppercase">Top 3 chim có điểm cao nhất</h5>
                        <h1 class="display-3 text-uppercase mb-0">Top Chim</h1>
                    </div>


                    <div class="row g-5">
                        <div class="col-lg-4 col-md-6">
                            <div class="team-item position-relative">
                                <div class="position-relative overflow-hidden rounded">
                                    <img class="img-fluid w-100" src="${leaderboard[1].photoPath}" alt="">
                                    <div class="team-overlay">
                                        <div class="align-items-center justify-content-start">
                                            <h6 class="text-uppercase text-light mb-3"> Điểm:
                                                ${leaderboard[1].point}</h6>
                                            <h6 class="text-uppercase text-light mb-3"> Tỉ lệ thắng:
                                                ${leaderboard[1].winRate()}%</h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="position-absolute start-0 bottom-0 w-100 rounded-bottom text-center p-4"
                                     style="background: rgba(173, 181, 189, .9);">
                                    <h5 class="text-uppercase text-light">${leaderboard[1].birdName}</h5>
                                    <p class="text-uppercase text-white m-0">Top 2</p>
                                    <p class="text-uppercase text-white m-0">Trainner: ${leaderboard[1].trainer}</p>


                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="team-item position-relative">
                                <div class="position-relative overflow-hidden rounded">
                                    <img class="img-fluid w-100" src="${leaderboard[0].photoPath}" alt="">
                                    <div class="team-overlay">
                                        <div class="align-items-center justify-content-start">
                                            <h6 class="text-uppercase text-light mb-3"> Điểm:
                                                ${leaderboard[0].point}</h6>
                                            <h6 class="text-uppercase text-light mb-3"> Tỉ lệ thắng:
                                                ${leaderboard[0].winRate()}%</h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="position-absolute start-0 bottom-0 w-100 rounded-bottom text-center p-4"
                                     style="background: rgba(255, 218, 101, .9);">
                                    <h5 class="text-uppercase text-light">${leaderboard[0].birdName}</h5>
                                    <p class="text-uppercase text-white m-0">Top 1</p>
                                    <p class="text-uppercase text-white m-0">Trainner: ${leaderboard[0].trainer}</p>

                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="team-item position-relative">
                                <div class="position-relative overflow-hidden rounded">
                                    <img class="img-fluid w-100" src="${leaderboard[2].photoPath}" alt="">
                                    <div class="team-overlay">
                                        <div class="align-items-center justify-content-start">
                                            <h6 class="text-uppercase text-light mb-3"> Điểm:
                                                ${leaderboard[2].point}</h6>

                                            <h6 class="text-uppercase text-light mb-3"> Tỉ lệ thắng:
                                                ${leaderboard[2].winRate()}%</h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="position-absolute start-0 bottom-0 w-100 rounded-bottom text-center p-4"
                                     style="background: rgba(201, 147, 85, .9);">
                                    <h5 class="text-uppercase text-light">${leaderboard[2].birdName}</h5>
                                    <p class="text-uppercase text-white m-0">Top 3</p>
                                    <p class="text-uppercase text-white m-0">Trainner: ${leaderboard[2].trainer}</p>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:if>  
        </div>

        <!-- Top Bird End -->



        <!-- Schedule Start -->
        <div id="schedule" class="container-fluid p-5">
            <div class="mb-5 text-center">
                <h5 class="text-primary text-uppercase">Lịch thi đấu</h5>
                <h1 class="display-3 text-uppercase mb-0">các trận đấu sắp tới</h1>
            </div>
            <div class="tab-class text-center">
                <ul
                    class="nav nav-pills d-inline-flex justify-content-center bg-dark text-uppercase rounded-pill mb-5">
                    <li class="nav-item">
                        <a class="nav-link rounded-pill text-white" data-bs-toggle="pill" href="#tab-0">Đã diễn
                            ra</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link rounded-pill text-white " data-bs-toggle="pill"
                           href="#tab-1">Đang diễn ra</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link rounded-pill text-white active" data-bs-toggle="pill" href="#tab-2">Sắp diễn
                            ra</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div id="tab-0" class="tab-pane fade show p-0">
                        <div class="row g-5">
                            <c:set var="scheduleData" value="${requestScope.SCHEDULE}" />
                            <c:if test="${not empty scheduleData}">
                                <c:forEach var="scheduleDto" items="${scheduleData}" varStatus="counter">
                                    <!--End-->
                                    <c:if test="${scheduleDto.statusOfContest == 4}">
                                        <form class="col-lg-3 col-md-4 col-sm-6  btn-viewInfo" action="IndexMatchInfo">
                                            <div>
                                                <div class="bg-hero rounded text-center py-5 px-3">
                                                    <p class="schedule-value text-uppercase text-warning mb-3">Hệ
                                                        số: ${scheduleDto.factor}</p>
                                                    <p class="schedule-value text-uppercase text-light mb-3">
                                                        Ngày: ${scheduleDto.getDateFormat()}</p>
                                                    <p class="schedule-value text-uppercase text-light mb-3">
                                                        Giờ: ${scheduleDto.startTime} - ${scheduleDto.endTime}</p>
                                                    <p class="schedule-value text-uppercase text-light mb-3">Địa
                                                        điểm: ${scheduleDto.location}</p>
                                                    <p class="schedule-value text-uppercase text-warning">
                                                        ${scheduleDto.name}</p>
                                                    <p
                                                        class="schedule-value text-uppercase text-secondary mb-0">
                                                        Loại chim: Chào mào</p>
                                                    <p class="schedule-value text-uppercase text-light mb-0">
                                                        Điểm yêu cầu:</p>
                                                    <p class="schedule-value text-uppercase text-light mb-0">
                                                        ${scheduleDto.minPoint} ~ ${scheduleDto.maxPoint} </p>
                                                    <p class="schedule-value text-uppercase text-light mt-3 mb-0">Phí
                                                        đăng kí(VND):</p>
                                                    <p class="schedule-value text-uppercase text-light mb-3">
                                                        ${scheduleDto.fee}</p>
                                                    <p class="schedule-value text-uppercase text-secondary mb-0"
                                                       style="display: inline;">
                                                        số lồng tối đa:
                                                        <span class="text-uppercase text-warning mb-0"
                                                              style="display: inline;">
                                                            ${scheduleDto.maxBird}</span>
                                                    </p><br>    
                                                    <p class="schedule-value text-uppercase text-secondary mb-0"
                                                       style="display: inline;">
                                                        số người đăng kí:
                                                        <span class="text-uppercase text-warning mb-0"
                                                              style="display: inline;">
                                                            ${scheduleDto.currentPar}/${scheduleDto.maxPar}</span>
                                                    </p>
                                                    <input type="hidden" name="hiddenContestId"
                                                           value="${scheduleDto.id}" />
                                                    </br><button class="btn btn-warning btn-viewInfo px-5"
                                                    style="margin-top: 10px;">Xem thông tin</button>
                                                </div>
                                            </div>
                                        </form>
                                    </c:if>
                                </c:forEach>
                            </c:if>
                        </div>
                    </div>
                    <div id="tab-1" class="tab-pane fade show p-0 ">
                        <div class="row g-5">
                            <c:set var="scheduleData" value="${requestScope.SCHEDULE}" />
                            <c:if test="${not empty scheduleData}">
                                <c:forEach var="scheduleDto" items="${scheduleData}" varStatus="counter">
                                    <!--Going-->
                                    <c:if test="${scheduleDto.statusOfContest == 3}">

                                        <div class="col-lg-3 col-md-4 col-sm-6  btn-viewInfo">
                                            <div class="bg-hero rounded text-center py-5 px-3">
                                                <p class="schedule-value text-uppercase text-success mb-3">Hệ số:
                                                    ${scheduleDto.factor}</p>
                                                <p class="schedule-value text-uppercase text-light mb-3">Ngày:
                                                    ${scheduleDto.getDateFormat()}</p>
                                                <p class="schedule-value text-uppercase text-light mb-3"> Giờ:
                                                    ${scheduleDto.startTime} - ${scheduleDto.endTime}</p>
                                                <p class="schedule-value text-uppercase text-light mb-3">Địa
                                                    điểm: ${scheduleDto.location}</p>
                                                <p class="schedule-value text-uppercase text-success">
                                                    ${scheduleDto.name}</p>
                                                <p class="schedule-value text-uppercase text-secondary mb-0">
                                                    Loại chim: Chào mào</p>
                                                <p class="schedule-value text-uppercase text-light mb-0">Điểm
                                                    yêu cầu:</p>
                                                <p class="schedule-value text-uppercase text-light mb-0">
                                                    ${scheduleDto.minPoint} ~ ${scheduleDto.maxPoint} </p>
                                                <p class="schedule-value text-uppercase text-light mt-3 mb-0">Phí
                                                    đăng kí(VND):</p>
                                                <p class="schedule-value text-uppercase text-light mb-3">
                                                    ${scheduleDto.fee}</p>
                                                <p class="schedule-value text-uppercase text-secondary mb-0"
                                                   style="display: inline;">
                                                    số lồng tối đa:
                                                    <span class="text-uppercase text-success mb-0"
                                                          style="display: inline;">
                                                        ${scheduleDto.maxBird}</span>
                                                </p><br>    
                                                <p class="schedule-value text-uppercase text-secondary mb-0"
                                                   style="display: inline;">
                                                    số người đăng kí:
                                                    <span class="text-uppercase text-success mb-0"
                                                          style="display: inline;">
                                                        ${scheduleDto.currentPar}/${scheduleDto.maxPar}</span>
                                                </p>
                                                </br><a href="https://www.facebook.com/birdfighter.compe/" class="btn btn-success btn-viewInfo px-5"
                                                        style="margin-top: 10px;"  target="_blank">Xem Trực tiếp</a>
                                            </div>
                                        </div>
                                    </c:if>
                                </c:forEach>
                            </c:if>
                        </div>
                    </div>
                    <div id="tab-2" class="tab-pane fade show p-0 active">
                        <div class="row g-5">
                            <c:set var="scheduleData" value="${requestScope.SCHEDULE}" />
                            <c:if test="${not empty scheduleData}">
                                <c:forEach var="scheduleDto" items="${scheduleData}" varStatus="counter">
                                    <!--Register-->
                                    <c:if test="${scheduleDto.statusOfContest == 1}">

                                        <div class="col-lg-3 col-md-4 col-sm-6">
                                            <div class="bg-hero rounded text-center py-5 px-3 btn-register">
                                                <p class="schedule-value text-uppercase text-primary mb-3">Hệ số:
                                                    ${scheduleDto.factor}</p>
                                                <p class="schedule-value text-uppercase text-light mb-3">Ngày:
                                                    ${scheduleDto.getDateFormat()}</p>
                                                <p class="schedule-value text-uppercase text-light mb-3"> Giờ:
                                                    ${scheduleDto.startTime} - ${scheduleDto.endTime}</p>
                                                <p class="schedule-value text-uppercase text-light mb-3">Địa
                                                    điểm: ${scheduleDto.location}</p>
                                                <p class="schedule-value text-uppercase text-primary">
                                                    ${scheduleDto.name}</p>
                                                <p class="schedule-value text-uppercase text-secondary mb-0">
                                                    Loại chim: Chào mào</p>
                                                    <c:if test="${user.vipType == null}">
                                                    <p class="schedule-value text-uppercase text-light mb-0">Điểm
                                                        yêu cầu:</p>
                                                    <p class="schedule-value text-uppercase text-light mb-0">
                                                        ${scheduleDto.minPoint} ~ ${scheduleDto.maxPoint} </p>
                                                    <p class="schedule-value text-uppercase text-light mt-3 mb-0">Phí
                                                        đăng kí(VND):</p>
                                                    <p class="schedule-value text-uppercase text-light mb-3">
                                                        ${scheduleDto.fee}</p>
                                                    </c:if>
                                                <!-- bronze -->
                                                <c:if test="${user.vipType == 1}">
                                                    <p class="schedule-value text-uppercase text-light mb-0">Điểm
                                                        yêu cầu: <span style="color: gold;" class="text-decoration-line-through">${scheduleDto.minPoint} ~ ${scheduleDto.maxPoint}</span></p>
                                                    <p class="schedule-value text-uppercase text-light mb-0">
                                                        ${scheduleDto.minPoint - 200} ~ ${scheduleDto.maxPoint + 200} </p>
                                                    <p class="schedule-value text-uppercase text-light mt-3 mb-0">Phí
                                                        đăng kí(VND): <span style="color: gold;" class="text-decoration-line-through">${scheduleDto.fee}</span></p>
                                                    <p class="schedule-value text-uppercase text-light mb-3">
                                                        ${scheduleDto.getBronzeFee()}</p>
                                                    </c:if>
                                                <!-- silver -->
                                                <c:if test="${user.vipType == 2}">
                                                    <p class="schedule-value text-uppercase text-light mb-0">Điểm
                                                        yêu cầu: <span style="color: gold;" class="text-decoration-line-through">${scheduleDto.minPoint} ~ ${scheduleDto.maxPoint}</span></p>
                                                    <p class="schedule-value text-uppercase text-light mb-0">
                                                        ${scheduleDto.minPoint - 500} ~ ${scheduleDto.maxPoint + 500} </p>
                                                    <p class="schedule-value text-uppercase text-light mt-3 mb-0">Phí
                                                        đăng kí(VND): <span style="color: gold;" class="text-decoration-line-through">${scheduleDto.fee}</span></p>
                                                    <p class="schedule-value text-uppercase text-light mb-3">
                                                        ${scheduleDto.getSilverFee()}</p>
                                                    </c:if>
                                                <!-- gold -->
                                                <c:if test="${user.vipType == 3}">
                                                    <p class="schedule-value text-uppercase text-light mb-0">Điểm
                                                        yêu cầu: <span style="color: gold;" class="text-decoration-line-through">${scheduleDto.minPoint} ~ ${scheduleDto.maxPoint}</span>
                                                        </br><span>Không giới hạn</span>
                                                    </p>
                                                    <p class="schedule-value text-uppercase text-light mb-0 hidden_price">${scheduleDto.minPoint - 1000000} ~ ${scheduleDto.maxPoint + 10000000}</p>
                                                    <p class="schedule-value text-uppercase text-light mt-3 mb-0">Phí
                                                        đăng kí(VND): <span style="color: gold;" class="text-decoration-line-through">${scheduleDto.fee}</span></p>
                                                    <p class="schedule-value text-uppercase text-light mb-3">
                                                        ${scheduleDto.getGoldFee()}</p>
                                                    </c:if>
                                                <p class="schedule-value text-uppercase text-secondary mb-0"
                                                   style="display: inline;">
                                                    số lồng tối đa:
                                                    <span class="text-uppercase text-primary mb-0"
                                                          style="display: inline;">
                                                        ${scheduleDto.maxBird}</span>
                                                </p><br>
                                                <p class="schedule-value text-uppercase text-secondary mb-0"
                                                   style="display: inline;">
                                                    số người đăng kí:
                                                    <span class="text-uppercase text-primary mb-0"
                                                          style="display: inline;">
                                                        ${scheduleDto.currentPar}/${scheduleDto.maxPar}</span>
                                                </p>
                                            </div>
                                        </div>
                                    </c:if>
                                    <!--Expried-->
                                    <c:if test="${scheduleDto.statusOfContest == 2}">
                                        <div class="col-lg-3 col-md-4 col-sm-6">
                                            <div class="bg-hero rounded text-center py-5 px-3">
                                                <p class="schedule-value text-uppercase text-danger mb-3">Hệ số:
                                                    ${scheduleDto.factor}</p>
                                                <p class="schedule-value text-uppercase text-light mb-3">Ngày:
                                                    ${scheduleDto.getDateFormat()}</p>
                                                <p class="schedule-value text-uppercase text-light mb-3"> Giờ:
                                                    ${scheduleDto.startTime} - ${scheduleDto.endTime}</p>
                                                <p class="schedule-value text-uppercase text-light mb-3">Địa
                                                    điểm: ${scheduleDto.location}</p>
                                                <p class="schedule-value text-uppercase text-danger">
                                                    ${scheduleDto.name}</p>
                                                <p class="schedule-value text-uppercase text-secondary mb-0">
                                                    Loại chim: Chào mào</p>
                                                <p class="schedule-value text-uppercase text-light mb-0">Điểm
                                                    yêu cầu:</p>
                                                <p class="schedule-value text-uppercase text-light mb-0">
                                                    ${scheduleDto.minPoint} ~ ${scheduleDto.maxPoint} </p>
                                                <p class="schedule-value text-uppercase text-light mt-3 mb-0">Phí
                                                    đăng kí(VND):</p>
                                                <p class="schedule-value text-uppercase text-light mb-3">
                                                    ${scheduleDto.fee}</p>
                                                <p class="schedule-value text-uppercase text-secondary mb-0"
                                                   style="display: inline;">
                                                    số lồng tối đa:
                                                    <span class="text-uppercase text-danger mb-0"
                                                          style="display: inline;">
                                                        ${scheduleDto.maxBird}</span>
                                                </p><br>    
                                                <p class="schedule-value text-uppercase text-secondary mb-0"
                                                   style="display: inline;">
                                                    số người đăng kí:
                                                    <span class="text-uppercase text-danger mb-0"
                                                          style="display: inline;">
                                                        ${scheduleDto.currentPar}/${scheduleDto.maxPar}</span>
                                                </p>
                                            </div>
                                        </div>
                                    </c:if>
                                </c:forEach>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Schedule End -->
        </div>

        <!-- Membership Start -->
        <div id="member" class="container-fluid programe position-relative px-5 mt-5"
             style="margin-bottom: 180px;">
            <div class="row g-5 gb-5">
                <div class="col-lg-4 col-md-6">
                    <div class="bg-light rounded text-center p-5">
                        <i class="fa-solid fa-medal display-1 medal3"></i>
                        <h3 class="text-uppercase my-4">Bronze Member</h3>
                        <p>Gói thành viên Đồng</p>
                        <a class="text-uppercase" href="Login2.jsp">Tham gia ngay<i
                                class="bi bi-arrow-right"></i></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="bg-light rounded text-center p-5">
                        <i class="fa-solid fa-medal display-1 medal1"></i>
                        <h1 class="text-uppercase my-4">Gold Member</h1>
                        <p>Gói thành viên Vàng</p>
                        <a class="text-uppercase" href="Login2.jsp">Tham gia ngay<i
                                class="bi bi-arrow-right"></i></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="bg-light rounded text-center p-5">
                        <i class="fa-solid fa-medal display-1"></i>
                        <h3 class="text-uppercase my-4">Silver Member</h3>
                        <p>Gói thành viên Bạc</p>
                        <a class="text-uppercase" href="Login2.jsp">Tham gia ngay<i
                                class="bi bi-arrow-right"></i></a>
                    </div>
                </div>
                <div class="col-lg-12 col-md-6 text-center">
                    <!-- <h1 class="text-uppercase text-light mb-4">30% Discount For This Summer</h1>
                    -->
                    <!--<a href="memberShip.html" class="btn btn-primary py-3 px-5">Tìm hiểu thêm</a>-->
                </div>
            </div>
        </div>
        <!-- Membership Start -->

        <!-- News Start -->
        <!-- <div id="news" class="container-fluid p-5">
            <div class="mb-5 text-center">
                <h5 class="text-primary text-uppercase">Tin tức</h5>
                <h1 class="display-3 text-uppercase mb-0">Tin tức mới nhất</h1>
            </div>
            <div class="row g-5">
                <div class="col-lg-4">
                    <div class="blog-item">
                        <a
                            href="https://baria.baria-vungtau.gov.vn/article/?item=63944904898b51bc1d04e968c0c1ca50">
                            <div class="position-relative overflow-hidden rounded-top">
                                <img class="img-fluid" src="FE/img/Hoithichimmorong01.jpg" alt="">
                            </div>
                            <div class="bg-dark d-flex align-items-center rounded-bottom p-4">
                                <div
                                    class="flex-shrink-0 text-center text-secondary border-end border-secondary pe-3 me-3">
                                    <span>27</span>
                                    <h6 class="text-light text-uppercase mb-0">January</h6>
                                    <span>2023</span>
                                </div>
                                <a class="h5 text-uppercase text-light"
                                   href="https://baria.baria-vungtau.gov.vn/article/?item=63944904898b51bc1d04e968c0c1ca50">HỘI
                                    THI CHIM CHÀO MÀO ĐẤU HÓT TPBR MỞ RỘNG NĂM 2023</h4></a>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="blog-item">
                        <a
                            href="https://baocaobang.vn/hoi-thi-dau-hot-chim-chao-mao-thanh-pho-mo-rong-nam-2023-3161421.html">
                            <div class="position-relative overflow-hidden rounded-top">
                                <img class="img-fluid"
                                     src="FE/img/104155_104154_104153_ntv03550_14381223_16185323_16191723.jpg"
                                     alt="">
                            </div>
                            <div class="bg-dark d-flex align-items-center rounded-bottom p-4">
                                <div
                                    class="flex-shrink-0 text-center text-secondary border-end border-secondary pe-3 me-3">
                                    <span>23</span>
                                    <h6 class="text-light text-uppercase mb-0">April</h6>
                                    <span>2023</span>
                                </div>
                                <a class="h5 text-uppercase text-light"
                                   href="https://baocaobang.vn/hoi-thi-dau-hot-chim-chao-mao-thanh-pho-mo-rong-nam-2023-3161421.html">Hội
                                    thi đấu hót chim chào mào Thành phố Cao Bằng mở rộng năm 2023</h4></a>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="blog-item">
                        <a
                            href="https://www.baokiengiang.vn/le-hoi/hoi-thi-chim-hot-nghe-thuat-mo-rong-nam-2023-17028.html">
                            <div class="position-relative overflow-hidden rounded-top">
                                <img class="img-fluid" src="FE/img/news03.jpg" alt="">
                            </div>
                            <div class="bg-dark d-flex align-items-center rounded-bottom p-4">
                                <div
                                    class="flex-shrink-0 text-center text-secondary border-end border-secondary pe-3 me-3">
                                    <span>09</span>
                                    <h6 class="text-light text-uppercase mb-0">October</h6>
                                    <span>2023</span>
                                </div>
                                <a class="h5 text-uppercase text-light"
                                   href="https://www.baokiengiang.vn/le-hoi/hoi-thi-chim-hot-nghe-thuat-mo-rong-nam-2023-17028.html">
                                    "Hội thi chim hót nghệ thuật mở rộng năm 2023 tại TP. Rạch Giá (Kiên Giang)
                                    </h4></a>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div> -->
        <!-- News End -->

        <!-- Feedback start -->
<!--        <div class="container-fluid p-0" style="margin: 90px 0;">
            <div class="row g-0">
                <div class="col-lg-6" style="min-height: 500px;">
                    <div class="position-relative h-100">
                        <img class="position-absolute w-100 h-100" src="FE/img/bird_player.png"
                             style="object-fit: cover;">
                    </div>
                </div>
                <div class="col-lg-6 bg-dark p-5">
                    <div class="mb-5">
                        <h5 class="text-primary text-uppercase">Đánh giá</h5>
                        <h1 class="display-3 text-uppercase text-light mb-0">Phản hồi từ người dùng</h1>
                    </div>
                    <div class="owl-carousel testimonial-carousel">
                        <div class="testimonial-item">
                            <p class="fs-4 fw-normal text-light mb-4"><i
                                    class="fa fa-quote-left text-primary me-3"></i> Trận đấu hay và cảm xúc</p>
                            <div class="d-flex align-items-center">
                                <div class="ps-4">
                                    <h5 class="text-uppercase text-light">DanhTran  </h5>
                                    <span class="text-uppercase text-secondary">Profession</span>
                                </div>
                            </div>
                        </div>
                        <div class="testimonial-item">
                            <p class="fs-4 fw-normal text-light mb-4"><i
                                    class="fa fa-quote-left text-primary me-3"></i> Chim đẹp và hót tốt</p>
                            <div class="d-flex align-items-center">
                                <div class="ps-4">
                                    <h5 class="text-uppercase text-light">HuyBui</h5>
                                    <span class="text-uppercase text-secondary">Profession</span>
                                </div>
                            </div>
                        </div>
                        <div class="testimonial-item">
                            <p class="fs-4 fw-normal text-light mb-4"><i
                                    class="fa fa-quote-left text-primary me-3"></i> Trọng tài chưa đủ chuyên môn</p>
                            <div class="d-flex align-items-center">
                                <div class="ps-4">
                                    <h5 class="text-uppercase text-light">KhangNguye</h5>
                                    <span class="text-uppercase text-secondary">Profession</span>
                                </div>
                            </div>
                        </div>
                        <div class="testimonial-item">
                            <p class="fs-4 fw-normal text-light mb-4"><i
                                    class="fa fa-quote-left text-primary me-3"></i> Chuyên nghiệp trong tổ chức</p>
                            <div class="d-flex align-items-center">
                                <div class="ps-4">
                                    <h5 class="text-uppercase text-light">HiepThuan </h5>
                                    <span class="text-uppercase text-secondary">Profession</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>-->
<div class="container-fluid p-0" style="margin: 90px 0;">
        <div class="row g-0">
            <div class="col-lg-6" style="min-height: 500px;">
                <div class="position-relative h-100">
                    <img class="position-absolute w-100 h-100" src="FE/img/bird_player.png" style="object-fit: cover;">
                </div>
            </div>
            <div class="col-lg-6 bg-dark p-5">
                <div class="mb-5">
                    <h5 class="text-primary text-uppercase">Đánh giá</h5>
                    <h1 class="display-3 text-uppercase text-light mb-0">Phản hồi từ người dùng</h1>
                </div>
                <c:set var="feedback" value="${requestScope.FEEDBACK}" /> 
                <c:set var="size" value="${10}" />

                <c:if test="${feedback.size() <= size}">
                    <c:set var="size" value="${feedback.size()}" />
                </c:if>
                <div class="owl-carousel testimonial-carousel">
                    <c:if test="${not empty feedback}">
                        <c:forEach var="i" begin="0" end="${size -1 }" step="1">

                            <div class="testimonial-item">
                                <p class="fs-4 fw-normal text-light mb-4"><i 
                                        class="fa fa-quote-left text-primary me-3"></i>${feedback.get(i).getDescription()}</p>
                                <div class="d-flex align-items-center">

                                    <div class="ps-4">
                                        <h5 class="text-uppercase text-light">${feedback.get(i).getIdMember()}</h5>
                                        <span class="text-uppercase text-secondary">Trainer</span>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
<!--         Feedback end -->

        <jsp:include page="JspCommon/webfooter.jsp"/>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="FE/lib/easing/easing.min.js"></script>
        <script src="FE/lib/waypoints/waypoints.min.js"></script>
        <script src="FE/lib/counterup/counterup.min.js"></script>
        <script src="FE/lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Template Javascript -->
        <script src="FE/js/main.js"></script>
    </body>

</html>