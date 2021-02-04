<%-- Document : resume Created on : Jan 24, 2021, 4:46:25 PM Author : LENOVO --%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
  <html>
    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <!--Title-->
      <title>Heart Resume</title>
      <!--Bootstrap CSS-->
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
      <link rel="stylesheet" href="main.css">
      <link rel="stylesheet" href="skill_animate.css">
      <link rel="stylesheet" href="https://cdn.rawgit.com/michalsnik/aos/1.0.1/dist/aos.css">
      <script src="https://use.fontawesome.com/9021d2ae51.js"></script>
    </head>

    <body>
      <% 
        request.setCharacterEncoding("UTF-8"); 
        response.setContentType("text/html; charset-UTF-8");
        response.setCharacterEncoding("UTF-8"); 

        String Firstname=request.getParameter("firstname"); 
        String Lastname=request.getParameter("lastname"); 
        String Nickname=request.getParameter("nickname"); 
        String Race=request.getParameter("race"); 
        String Nationality=request.getParameter("nationality"); 
        String Religion=request.getParameter("religion"); 
        String Status=request.getParameter("status"); 
        String Birthday=request.getParameter("birthday"); 
        String Age=request.getParameter("age"); 
        String Junior=request.getParameter("junior"); 
        String High=request.getParameter("high"); 
        String Address=request.getParameter("address"); 
        String Tel=request.getParameter("tel"); 
        String Email=request.getParameter("email"); 
      %>
        <div id="main">
          <header>
            <nav class="navbar navbar-expand-lg navbar-light">
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                  <li class="nav-item active">
                    <a style="color: aliceblue;" class="nav-link" href="#">Home</a>
                  </li>
                  <li class="nav-item">
                    <a style="color: aliceblue;" class="nav-link" href="#about">About</a>
                  </li>
                  <li class="nav-item">
                    <a style="color: aliceblue;" class="nav-link" href="#skill">Skill</a>
                  </li>
                  <li class="nav-item">
                    <a style="color: aliceblue;" class="nav-link" href="#contact">Contact</a>
                  </li>
                </ul>
              </div>
            </nav>
          </header>
          <h1 id="name">Wirunrom <br> Wankasemsan</h1>
          <h2 class="line-1 anim-typewriter">Information Technology</h2>
        </div>
        <div style="padding-bottom: 100px;" id="about">
          <div class="container">
            <h1 style="color: rgb(209, 209, 209);" class="text-center aboutHeading anim">About Me</h1>
            <div class="ab-me">
              <b>ชื่อ : </b>
              <% out.print(Firstname); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>นามสกุล : </b>
                <% out.print(Lastname); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>ชื่อเล่น : </b>
                  <% out.print(Nickname); %><br>
                    <b>เชื้อชาติ : </b>
                    <% out.print(Race); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>สัญชาติ : </b>
                      <% out.print(Nationality); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>ศาสนา : </b>
                        <% out.print(Religion); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>สถานภาพ : </b>
                          <% out.print(Status); %><br>
                            <b>วันเกิด : </b>
                            <% out.print(Birthday); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>อายุ : </b>
                              <% out.print(Age); %> ปี<br>
                                <b>ประวัติการศึกษา</b><br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;มัธยมตอนต้น : <% out.print(Junior); %><br>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ปวช. - ปวส. : <% out.print(High); %><br>
            </div>
          </div>
        </div>
        
        <!--Projects Section - Add your websites to the cards - You can add more as a Bootstrap Deck-->
        <div id="skill">
          <div class="container">
            <h1 class="text-center aboutHeading">Skill</h1>
            <div class="u-center">
              <section class="skills">
                <div class="skill anim">
                  <h3 class="skill__type">HTML</h3>
                  <div class="skill__outer-bar">
                    <div class="skill__inner-bar skill__inner-bar--100"></div>
                  </div>
                </div>
                <div class="skill anim">
                  <h3 class="skill__type">CSS</h3>
                  <div class="skill__outer-bar">
                    <div class="skill__inner-bar skill__inner-bar--90"></div>
                  </div>
                </div>
                <div class="skill anim">
                  <h3 class="skill__type">JS</h3>
                  <div class="skill__outer-bar">
                    <div class="skill__inner-bar skill__inner-bar--80"></div>
                  </div>
                </div>
                <div class="skill anim">
                  <h3 class="skill__type">PHP</h3>
                  <div class="skill__outer-bar">
                    <div class="skill__inner-bar skill__inner-bar--70"></div>
                  </div>
                </div>
                <div class="skill anim">
                  <h3 class="skill__type">SQL</h3>
                  <div class="skill__outer-bar">
                    <div class="skill__inner-bar skill__inner-bar--60"></div>
                  </div>
                </div><br><br><br><br><br>
              </section>
            </div>
          </div>
        </div>

        <!--Contact Section - I used php to get this working with my server-->
        <div style="padding-bottom: 100px;" id="contact">
          <div class="container">
            <h1 class="text-center aboutHeading">Contact</h1>
            <div class="ab-me">
              <b>บ้านเลขที่</b>
              <% out.print(Address); %><br>
                <b>เบอร์โทรศัพท์ : </b>
                <% out.print(Tel); %><br>
                  <b>Email : </b>
                  <% out.print(Email); %><br>
            </div>
          </div>
        </div>

        <!--Very Basic footer section - Adding Social Media links here would be ideal-->
        <footer class="footer">
          <div class="container text-center">
            <span class="footer-text">Copyright © 2021 | Heart Wirunrom</span>
          </div>
        </footer>

        <!--anim-->
        <script type="text/javascript">
          window.sr = ScrollReveal();
          sr.reveal('.anim');
        </script>

        <script>
          AOS.init({
            easing: 'ease-out-back',
            duration: 1000
          });

          hljs.initHighlightingOnLoad();

          $('.hero__scroll').on('click', function (e) {
            $('html, body').animate({
              scrollTop: $(window).height()
            }, 1200);
          });
        </script>

        <!--JS-->
        <script src="https://cdn.rawgit.com/michalsnik/aos/1.0.1/dist/aos.js"></script>
        <script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
          integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
          crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
          integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
          crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
          integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
          crossorigin="anonymous"></script>
    </body>
  </html>