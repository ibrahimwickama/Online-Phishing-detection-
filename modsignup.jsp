<%@ page import="java.util.Random" %>
<html
        xmlns="http://www.w3.org/TR/REC-html40">
<head>
    <meta http-equiv="Content-Language" content="en-us">
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
    <title>New Page 1</title>
    <script>
        function che() {
            var code = document.forms[0].t1.value;
            alert("Secret code : " + code)
        }
        function si() {
            alert("hai");

            var id = document.forms[0].p2.value;
            var scode = document.forms[0].sec.value;
            var code = document.forms[0].t1.value;

            if (id == "" || scode == "")
                alert("Please Enter all fields");
            else if (scode != code)
                alert("Please Enter correct security code");
            else {
                alert("correct");
                document.forms[0].action = "/Phising/Signup";
                document.forms[0].submit();
            }

        }
        function hom() {
            document.forms[0].action = "home.jsp";
            document.forms[0].submit();
        }
    </script>
</head>
<body background="image/theme.gif">
<div style="position: absolute; width: 100px; height: 100px; z-index: 4; left: 610px; top: 13px" id="layer7">
    <div style="position: absolute; width: 246px; height: 33px; z-index: 2; left: -317px; top: 104px" id="layer10">
        <div style="position: absolute; width: 100px; height: 27px; z-index: 1; left: -292px; top: -118px" id="layer11">
            <input type=image src="image/hom.gif" onclick="hom()"><br>
            &nbsp;<p>&nbsp;</div>
        <u><font face="Book Antiqua" size="4" color="#008000">Registration Form</font></u></div>
    <input border="0" src="image/globe1.gif" name="I5" width="86" height="83" type="image">
    <div style="position: absolute; width: 100px; height: 19px; z-index: 1; left: 4px; top: 34px" id="layer8">
        <b><font face="French Script MT" color="#00FFFF" size="5">
            <marquee width="78">Global Mail</marquee>
        </font></b></div>
    <p>&nbsp;</div>

<div style="position: absolute; width: 361px; height: 30px; z-index: 6; left: 364px; top: 352px" id="layer12">
    <center><font color=#CC0000>
        <b>
            <font color=#009900>Show Msg:</font>
            <%
                System.out.println(request.getAttribute("msg"));
            %></b></font></center>
</div>

<p>&nbsp;</p>
<p>
    <%! String co; %>
    <%
        Random r = new Random();
        String s = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz123456789";
        char c = s.charAt(r.nextInt(60));
        char c1 = s.charAt(r.nextInt(60));
        char c2 = s.charAt(r.nextInt(60));
        char c3 = s.charAt(r.nextInt(60));
        char c4 = s.charAt(r.nextInt(60));
        co = "" + c + c1 + c2 + c3 + c4;
    %>
    <!--<marquee behavior=slide bgcolor=#FFFFCC><font size=7 color=red face="Arial"><%=co%></font></marquee>
-->
</p>
<div style="position: absolute; width: 465px; height: 134px; z-index: 1; left: 165px; top: 15px" id="layer1">
    <div style="position: absolute; width: 195px; height: 21px; z-index: 1; left: 164px; top: 57px" id="layer5">
        <i><b><font color="#800000" face="Bodoni MT" size="2">Connecting People
            Globally !</font></b></i></div>
    <blockquote>
        <h1 align="left"><b>
            &nbsp;<font size="7" face="Century Schoolbook" color="#800080">G</font><font size="7"
                                                                                         face="French Script MT"
                                                                                         color="#800080">lobal
            Mail </font></b></h1>
        <p align="left">&nbsp;</p>
    </blockquote>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<blockquote>
    <p>&nbsp;</p>

    <blockquote>
        <div style="position: absolute; width: 100px; height: 100px; z-index: 5; left: 56px; top: 118px" id="layer9">
            <input border="0" src="image/signup2.gif" name="I6" width="114" height="145" type="image"></div>
        <form method=post>
            <blockquote>
                <blockquote>
                    <blockquote>
						<pre><b><font color="#000080">Name</font></b>		   <font color="#008081"><input type=text
                                                                                                             name=p1
                                                                                                             value="<%=request.getAttribute("name").toString()%>"
                                                                                                             readonly></font><br>
<b><font color="#000080">UserName</font></b>	   <input type=text name=p2><br>
<b><font color="#000080">Password</font></b>	   <input type=password name=p31
                                                          value="<%=request.getAttribute("pwd").toString()%>"
                                                          readonly><br>
<b><font color="#000080">ReTypePassword </font></b>    <input type=password name=p32
                                                              value="<%=request.getAttribute("pwd").toString()%>"
                                                              readonly><br>
<b><font color="#000080">Secret Question</font>	</b>   <input type=text name=p4
                                                                 value="<%=request.getAttribute("secq").toString()%>"
                                                                 size="30" readonly><br>

<b><font color="#000080">Secret Answer</font></b>	   <input type=text name=p5
                                                               value="<%=request.getAttribute("seca").toString()%>"
                                                               readonly><br>
	  	   <input value="<%=co%>"
                  style="border:1px solid #FFFFFF; borer: 0px solid #FFFFFF; width:145px; height:30px; font-family:Pristina; font-size:20pt; font-weight:bold; color:#800000; letter-spacing: inherit; text-align:center; background-image:url('image/1.gif')"
                  tabindex="80" name="t1" size="12" readonly>  <input type=button value="Show Secret Code"
                                                                      onclick="che()"
                                                                      style="font-family: Book Antiqua; font-weight: bold; color: #800000; background-color: #000000; background-image: url('image/b1.jpg')"><br>
<b><font color="#000080">Secret Code</font></b>	   <input type=text name=sec><br>
  
		     <input type=button onclick="si()"
                    style="border:0px solid #FFFFFF; background-image: url('image/signup1.gif')"
                    value="                    ">
</pre>
                    </blockquote>
                </blockquote>
            </blockquote>
        </form>
    </blockquote>
</blockquote>
</body>

</html>