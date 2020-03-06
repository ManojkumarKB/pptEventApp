
<html>
<head>
<title>Symposium Event Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">

<script src="https://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
<script src="js/app-ajax.js" type="text/javascript"></script>

</head>
<body>

<script>
    $(document).ready(function(){
    $("#bt").click(function(){
        console.log("Sdsd");
        alert("The paragraph was clicked.");
          var inputVal = document.getElementById("TeamMem").value;
        	  console.log("function insidee");
        	  document.getElementById("df").innerHTML="dff";
        	  if(inputVal<=3)
        	  {
                for(var i=0;i<inputVal;i++)
                {
          		    var x = document.createElement("INPUT");
                    x.setAttribute("type", "text");
          		    x.setAttribute("placeholder", "Enter the name");
          		    var y= document.createElement("INPUT");
          		    x.setAttribute("type","text");
          		    x.setAttribute("placeholder","Enter the college name");
          		    document.body.appendChild(x);
          		    document.body.appendChild(y);
         	    }
         	  }
         	  else
         	  {
         	      alert("Team members should be less than 3");
         	  }
      });
    });
 	 </script>
	<!-- main -->
	<div class="main-w3layouts wrapper">
		<h1>Registeration</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form action="#" method="post">
				    <input class="number" type="number" id="TeamMem" placeholder="Enter the team members" required="" >
				    <input type="button"  value="click it" id="bt"/>
				    <div id="NmList"></div>
					<!--<input class="text" type="text" name="Username" placeholder="Username" required="">-->
					<input class="text email" type="email" name="email" placeholder="Email" required="">
					<input class="text" type="password" name="password" placeholder="Password" required="">
					<input class="text w3lpass" type="password" name="password" placeholder="Confirm Password" required="">
					<div class="wthree-text">
						<label class="anim">
							<input type="checkbox" class="checkbox" required="">
							<span>I Agree To The Terms & Conditions</span>
						</label>
						<div class="clear"> </div>
					</div>
					<input type="submit" value="SIGNUP">
				</form>
				<p id="df">Don't have an Account? <a href="#"> Login Now!</a></p>
			</div>
		</div>
		<!-- //copyright -->
		<ul class="colorlib-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>

	<!-- //main -->
</body>
</html>

