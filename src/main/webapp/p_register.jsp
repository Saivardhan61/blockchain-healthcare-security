<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Patient Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />

<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

<!-- Google Fonts and modern styles -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

<style type="text/css">
body {
  font-family: 'Poppins', sans-serif;
}
.style1 {font-size: 40px}
.style2 {
  font-family: "Times New Roman", Times, serif;
  font-size: 20px;
}
.style5 {color: #990000}
.style6 {font-size: 18px}

/* Modern Form Styling */
.registration-box {
  max-width: 700px;
  margin: auto;
  background: #fff;
  padding: 30px;
  border-radius: 15px;
  box-shadow: 0 0 10px rgba(0,0,0,0.15);
  font-family: 'Poppins', sans-serif;
}
.registration-box h3 {
  text-align: center;
  color: #6a1b9a;
  margin-bottom: 25px;
  font-weight: 600;
}
.registration-box input[type=text],
.registration-box input[type=password],
.registration-box input[type=email],
.registration-box input[type=date],
.registration-box input[type=file],
.registration-box select,
.registration-box textarea {
  width: 100%;
  padding: 10px;
  margin-bottom: 15px;
  border-radius: 8px;
  border: 1px solid #ccc;
  font-size: 15px;
}
.registration-box input[type=text]:focus,
.registration-box input[type=password]:focus,
.registration-box input[type=email]:focus,
.registration-box textarea:focus {
  outline: none;
  border-color: #6a1b9a;
  box-shadow: 0 0 5px rgba(106,27,154,0.4);
}
.registration-box label {
  font-weight: 500;
}
.registration-box input[type=submit] {
  background: #6a1b9a;
  color: #fff;
  padding: 10px 25px;
  border: none;
  border-radius: 8px;
  cursor: pointer;
  font-weight: 500;
  transition: background 0.3s;
}
.registration-box input[type=submit]:hover {
  background: #4a148c;
}
.registration-box a {
  color: #6a1b9a;
  text-decoration: none;
  margin-left: 10px;
}
.registration-box a:hover {
  text-decoration: underline;
}
</style>

<script type="text/javascript">
function valid() {
  var f = document.s;

  if(f.userid.value.trim()=="") { alert("Please Enter User Name"); f.userid.focus(); return false; }
  if(f.pass.value.trim()=="") { alert("Please Enter Password"); f.pass.focus(); return false; }
  if(f.email.value.trim()=="" || f.email.value.indexOf("@")<0 || f.email.value.indexOf(".")<0) { alert("Please Enter Valid Email"); f.email.focus(); return false; }
  if(f.mobile.value.trim()=="" || isNaN(f.mobile.value) || f.mobile.value.length!=10) { alert("Please Enter Valid 10 Digit Mobile Number"); f.mobile.focus(); return false; }
  if(f.address.value.trim()=="") { alert("Please Enter Your Address"); f.address.focus(); return false; }
  if(f.dob.value.trim()=="") { alert("Please Enter Date of Birth"); f.dob.focus(); return false; }
  if(f.gender.value=="-Select-") { alert("Please Select Gender"); f.gender.focus(); return false; }
  if(f.pincode.value.trim()=="" || isNaN(f.pincode.value)) { alert("Please Enter Valid Pincode"); f.pincode.focus(); return false; }
  if(f.location.value.trim()=="") { alert("Please Enter Location"); f.location.focus(); return false; }
  if(f.pic.value.trim()=="") { alert("Please Select Profile Picture"); f.pic.focus(); return false; }
  return true;
}
</script>
</head>

<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="c_login.jsp"><span>Cloudlet</span></a></li>
          <li><a href="d_login.jsp"><span>Doctor</span></a></li>
          <li><a href="p_login.jsp"><span>Patient</span></a></li>
          <li><a href="w_login.jsp"><span>Hospitals</span></a></li>
          <li><a href="i_login.jsp"><span>Intruder</span></a></li>
        </ul>
      </div>

      <div class="logo">
        <h1><a href="index.html" class="style1">Block chain-Driven Security Framework for Healthcare Record Management</a></h1>
      </div>
      <div class="clr"></div>

      <div class="slider">
        <div id="coin-slider">
          <a href="#"><img src="images/slide1.jpg" width="970" height="305" alt="" /></a>
          <a href="#"><img src="images/slide2.jpg" width="970" height="305" alt="" /></a>
          <a href="#"><img src="images/slide3.jpg" width="970" height="305" alt="" /></a>
        </div>
      </div>

      <div class="clr"></div>
    </div>
  </div>

  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center">Patient Registration</h2>
          <p>&nbsp;</p>

          <!-- Modernized Registration Form -->
          <div class="registration-box">
            <form name="s" action="p_RegIns.jsp" method="post" enctype="multipart/form-data" onsubmit="return valid()" target="_top">
              
              <label for="userid">Full Name <span style="color:red">*</span></label>
              <input type="text" id="userid" name="userid" placeholder="Enter your full name" />

              <label for="pass">Password <span style="color:red">*</span></label>
              <input type="password" id="pass" name="pass" placeholder="Enter password" />

              <label for="email">Email <span style="color:red">*</span></label>
              <input type="email" id="email" name="email" placeholder="Enter email address" />

              <label for="mobile">Mobile Number <span style="color:red">*</span></label>
              <input type="text" id="mobile" name="mobile" placeholder="10-digit mobile number" maxlength="10" />

              <label for="address">Address</label>
              <textarea id="address" name="address" rows="2" placeholder="Enter your address"></textarea>

              <label for="dob">Date of Birth <span style="color:red">*</span></label>
              <input type="date" id="dob" name="dob" />

              <label for="gender">Gender <span style="color:red">*</span></label>
              <select id="gender" name="gender">
                <option>-Select-</option>
                <option>Male</option>
                <option>Female</option>
                <option>Other</option>
              </select>

              <label for="pincode">Pincode <span style="color:red">*</span></label>
              <input type="text" id="pincode" name="pincode" maxlength="6" placeholder="Enter your area pincode" />

              <label for="location">Location <span style="color:red">*</span></label>
              <input type="text" id="location" name="location" placeholder="Enter your location" />

              <label for="pic">Profile Picture</label>
              <input type="file" id="pic" name="pic" />

              <div style="text-align:center; margin-top:20px;">
                <input type="submit" value="REGISTER" />
                <a href="p_login.jsp">Back</a>
              </div>
            </form>
          </div>
        </div>
      </div>

      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html"><span>Home Page</span></a></li>
            <li><a href="c_login.jsp"><span>Cloudlet</span></a></li>
            <li><a href="d_login.jsp"><span>Doctor</span></a></li>
            <li><a href="p_login.jsp"><span>Patient</span></a></li>
            <li><a href="w_login.jsp"><span>Hospitals</span></a></li>
            <li><a href="i_login.jsp"><span>Intruder</span></a></li>
          </ul>
        </div>
      </div>

      <div class="clr"></div>
    </div>
  </div>

  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a>
        <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a>
        <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a>
        <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a>
        <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a>
        <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a>
      </div>
      <div class="clr"></div>
    </div>
  </div>

  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align="center"></div>
</body>
</html>
