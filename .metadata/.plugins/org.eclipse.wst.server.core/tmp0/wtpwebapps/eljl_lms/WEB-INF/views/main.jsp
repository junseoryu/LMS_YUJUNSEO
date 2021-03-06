<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*, java.text.*" %>
<html lang="en">
<head>
  <title>LMS</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet"> 
<link rel="stylesheet" href="resources/css/master.css">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
 
  <script type="text/javascript" src="resources/js/master.js"></script>
  <script type="text/javascript" src="resources/js/main.js"></script>
  <link href="/resources/css/main.css" rel="stylesheet" />
</head>
<body onload="getList('${mbId}'), divCreate(), otherClass(), getAjax('https://api.ipify.org','format=json', 'getPublicIp')">

<% Date date = new Date(); 
SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
String strdate = simpleDate.format(date);
%>


<div id="hiddenBox">
<input type='hidden' name='mbType' value='${mbType}' />

</div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="main" id="test" style="color: white;"><img
                  src="resources/images/eljl_LOGO_final.png"
                  style="height: 30px; width: 100px;" /></a></li>
        <li class="dropdown" id="user" style = "display:none; height:40px; padding-top:6px;" >
            <a class="dropdown-toggle" data-toggle="dropdown" href="#"> <p><span class="glyphicon glyphicon-plus-sign"><span class="caret"></span></span></p> </a>
            <ul class="dropdown-menu" id="classMenu">
              <li><a data-toggle="modal" data-target="#createClass1"><span class="glyphicon glyphicon-plus" > Class</span></a></li> 
              
              <li onClick="deleteClassList()"><a data-toggle="modal" data-target="#deleteClass"><span class="glyphicon glyphicon-trash" > Delete</span></a></li>                        
           </ul>
       </li>
        <li><a href="calendar" style="margin-top:5px;">Calender</a></li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right" style="margin-top:5px;">
        <li><a href="#" onClick="logOut('${mbId}')"><span class="glyphicon glyphicon-log-in" > ????????????</span></a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center" style = "margin-left:5%;">    
  <div class="row content">
  <hr>
    <div class="col-sm-1 text-left"> </div>
    <div class="col-sm-10 text-left"> 
    
   		<div class = "myClassList">
        <div >
        <div class = "bar">??? ?????? ?????? </div></div>
  	  <br>
      <div id="myClass" ></div>
      </div>
      <br>
     </div>

      <div class="col-sm-10 text-left" style = "margin-left:8.5%;"> 
     <div class = "bar2">?????? ?????? ??????</div>
    	<br>
      <div id ="otherClassList" ></div>
    
    
     </div>
    </div>
  </div>

<!-- ????????? ?????? ????????? ????????? -->
<div class="modal fade" id="createClass1" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" onClick="deleteValue()" >&times;</button>
          <h4 class="modal-title">?????? ??????(1/2) </h4>
        </div>
        <div class="modal-body1"><br>
          <p class = "classCreate1">?????? ???</p>
             <input type="text" name="csName" class="textBox">
           <p class = "classCreate1">?????? ???</p>
             <input type="text" name="newOpName" class="textBox">
           <p class = "classCreate1">?????? ??????</p>
             <input type="date" name="startDate" min="<%=strdate %>" class="dateBox" >
            <p class = "classCreate1">?????? ??????</p>
             <input type="date" name="endDate"  min="<%=strdate %>" onblur="endDateCheck()" class="dateBox">
        </div>
        <br>
        <div class="modal-footer">
         <button type="button" class="btn btn-default" data-dismiss="modal" data-toggle="modal" data-target="#createClass2" onClick="">??????</button>
          <button type="button" class="btn btn-default" data-dismiss="modal" onClick="deleteValue()">??????</button>
        </div>
        
         
      
      </div>
      
    </div>
  </div>
  <!-- ????????? ?????? ????????? ????????? -->
  <div style="overflow:scroll;" class="modal fade" id="createClass2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">?????? ??????(2/2) </h4>
        </div>
        <div class="modal-body2" id="modal-body"><br>
          <p class = "classCreate2">????????????<a onClick="addCategory()"><span class="glyphicon glyphicon-plus" ></span></a></p>
        
          <div id="modalBox"></div>
          
          
         
        </div>
         <br>
        <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" data-toggle="modal" data-target="#createClass1" >??????</button>
          <button type="button" class="btn btn-default" onClick="createClass()">??????</button>
          <button type="button" class="btn btn-default" data-dismiss="modal" onClick="deleteValue()">??????</button>
        </div>
        
          
        
      </div>
      
    </div>
  </div>
  
 <!-- ?????? ????????? -->
  <div class="modal fade" id="deleteClass" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">?????? ?????? </h4>
        </div>
        <div class="modal-body">
        
             <table class="table table-striped">
          <thead>
            <tr>
              <th>????????? ?????? ??????</th>
              <th>??????</th>
            </tr>
          </thead>
          <tbody id="deleteClassBox">
      
          </tbody>
          </table>
            
            
        </div>
        <div class="modal-footer">
        
          <button type="button" class="btn btn-default" data-dismiss="modal" onClick="getList()">??????</button>
        </div>
        
         
      
      </div>
      
    </div>
  </div> 
  
  <!-- ???????????? ?????????-->
  <div class="modal fade" id="joinClass" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" onClick="deleteValue()" >&times;</button>
          <h4 class="modal-title">???????????? </h4>
        </div>
        <div class = "modal-body">???????????? ???????????????????</div>
        <div class="modal-footer">
         <button type="button" class="btn btn-default" data-dismiss="modal" onClick="joinClass()">???</button>
          <button type="button" class="btn btn-default" data-dismiss="modal" >?????????</button>
        </div>
        
      </div>
      
    </div>
  </div> 
  
  <!-- ?????? ?????? ?????????-->
  <div class="modal fade" id="cancelClass" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" >&times;</button>
          <h4 class="modal-title">?????? ?????? </h4>
        </div>
        <div class = "modal-body">?????? ????????? ?????????????????????????</div>
        <div class="modal-footer">
         <button type="button" class="btn btn-default" data-dismiss="modal" onClick="cancelClass(number)">???</button>
          <button type="button" class="btn btn-default" data-dismiss="modal" >?????????</button>
        </div>
        
      </div>
      
    </div>
  </div> 
  
</body>
</html>