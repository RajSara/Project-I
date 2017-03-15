					 <%@include file="Head.jsp" %> 
<html>
<head>
<title>Login page</title>

						 <link rel="stylesheet" href="<c:url value='/resource/saracss/Login.css' />" />		

</head>
<body>


<body>
  <div class="content">
    <!--Echo out errors here. See example-->
    <!--<p class=error>Error, wrong username or password used. Please, try again.-->
    <form action="<c:url value="j_spring_security_check"></c:url>" method="post">
      <div class="mat-in">
        <input type="text" name="j_username" value="" required>  <!-- pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}" --></input>
        <span class="bar"></span>
        <label>Username</label>
      </div>
      <div class="mat-in">
        <input type="password" name="j_password" value="" required>  <!-- pattern="[^0-9][A-Za-z]{2,20}" --></input>
        <span class="bar"></span>
        <label>Password</label>
      </div>
      <button type="submit">Login</button>
    </form>
  </div>
  <div class="bg-boxes">
    		<svg width="300px" height="100%" id="col1">
      <rect width="150px" height="150px" x="75px" y="75px" class="bubble" id="bub1" />
    </svg>
    <svg width="200px" height="100%" id="col2">
      <rect width="100px" height="100px" x="50px" y="50px" class="bubble" id="bub2" />
    </svg>
    <svg width="260px" height="100%" id="col3">
        <rect width="130px" height="130px" x="65px" y="65px" class="bubble" id="bub3" />
    </svg>
    <svg width="160px" height="100%" id="col4">
        <rect width="80px" height="80px" x="40px" y="40px" class="bubble" id="bub4" />
    </svg>
    <svg width="240px" height="100%" id="col5">
        <rect width="120px" height="120px" x="60px" y="60px" class="bubble" id="bub5" />
    </svg>
    <!--Here is a triangle-->
    <svg width="200px" height="100%" id="col6">
        <polygon points="50,150 100,50 150,150" class="bubble" id="bub6" />
    </svg>
    <svg width="200px" height="100%" id="col7">
        <rect width="100px" height="100px" x="50px" y="50px" class="bubble" id="bub7" />
    </svg>
    <svg width="200px" height="100%" id="col8">
        <rect width="100px" height="100px" x="50px" y="50px" class="bubble" id="bub8" />
    </svg>
    <svg width="200px" height="100%" id="col9">
        <rect width="100px" height="100px" x="50px" y="50px" class="bubble" id="bub9" />
    </svg>
    <svg width="200px" height="100%" id="col10">
        <rect width="100px" height="100px" x="50px" y="50px" class="bubble" id="bub10" />
    </svg>
    <svg width="100px" height="100%" id="col11">
        <rect width="50px" height="50px" x="25px" y="25px" class="bubble" id="bub11" />
    </svg>
  </div>
</body>

</body>
</html>