<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="http://humy2833.dothome.co.kr/customizing.html#">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet"> 
<link rel="stylesheet" href="resources/css/master.css">
  
  <style>
   a:hover {
       color:black;
    }
    
    #test : hover{
       color:black;
    }
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
      background-color: #375a7f;
     
    }
   
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #ffffff;
      height: 100%;
    }
    
    /* Set black background color, C and some padding */
    
 
    footer {
      background-color: #555;
      color: blue;
      padding: 15px;
    }
    
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
    
    body {
  text-align: center;
  padding: 50px;
}

.button {
  display: inline-block;
  border : 1px solid #aec9f5; 
  background-color: #ffffff;
  text-transform: uppercase;
  color : #757575;
  padding: 20px 30px;
  border-radius: 5px;
  box-shadow: 0px 17px 10px -10px rgba(0, 0, 0, 0.4);
  cursor: pointer;
  -webkit-transition: all ease-in-out 300ms;
  transition: all ease-in-out 300ms;
  width : 300px;
  height : 150px;
  line-height:100px;
  font-weight : bold;
}

.button:hover {
  box-shadow: 0px 37px 20px -20px rgba(0, 0, 0, 0.2);
  -webkit-transform: translate(0px, -10px) scale(1.2);
          transform: translate(0px, -10px) scale(1.2);
    }
    
    #bannerBox > ul{
	margin-top: 5px;
}

#bannerBox2 > ul{
	margin-top: 5px;
}
  </style>


	<script type="text/javascript" src="resources/js/master.js"></script>
    
    <script type="text/javascript">
    let count = 0;
    let data = "";
    // ?????? ?????? ?????? ????????? ?????????
    function getSubject(){
    	let mbId = document.getElementsByName("mbId")[0];
    	let csCode = document.getElementsByName("csCode")[0];
    	let opCode = document.getElementsByName("opCode")[0];
    	
    	let sendJsonData = [];
   	  	sendJsonData.push({mbId:mbId.value,csCode:csCode.value,opCode:opCode.value});
   	  	let clientData = JSON.stringify(sendJsonData);
    	postAjax("teacher/getSetting",clientData,"addSubject","json")
    }
    
    // ?????? ?????? ?????? ?????? ????????????
    function addSubject(jsonData){
    	let csName = document.getElementById("csName");
    	let opName = document.getElementsByName("opName")[1];
    	let startDate = document.getElementsByName("startDate")[0];
    	let endDate = document.getElementsByName("endDate")[0];
    	
    	csName.innerText = jsonData[0].csName;
    	opName.value = jsonData[1].opName;
    	startDate.value = moment(jsonData[1].startDate).format('YYYY-MM-DD');
    	endDate.value = moment(jsonData[1].endDate).format('YYYY-MM-DD');
    }

    // ???????????? ????????????
    function updateSubject(){
    	let mbId = document.getElementsByName("mbId")[0];
    	let csCode = document.getElementsByName("csCode")[0];
    	let opCode = document.getElementsByName("opCode")[0];
    	let opName = document.getElementsByName("opName")[0];
    	let startDate = document.getElementsByName("startDate")[0];
    	let endDate = document.getElementsByName("endDate")[0];
    	
    	let sendJsonData = [];
   	  	sendJsonData.push({csCode:csCode.value,opCode:opCode.value,opName:opName.value,startDate:startDate.value,endDate:endDate.value});
   	  	let clientData = JSON.stringify(sendJsonData);
    	postAjax("teacher/updateSubject",clientData,"updateMsg","json")
    	
    }
    
    // ?????? -> ?????? + ??????
    function updateMsg(message){
    	alert(JSON.parse(JSON.stringify(message)).message);
    }
    
    
    // ?????? ?????? ?????? ?????? ?????? ????????????
    function getScoreStandard(){
    	
    	let mbId = document.getElementsByName("mbId")[0];
    	let csCode = document.getElementsByName("csCode")[0];
    	let opCode = document.getElementsByName("opCode")[0];
    
    	let div = document.getElementById("changeBox");
    	
    	if(div.innerHTML != ""){
    		div.innerHTML = "";
    	}
    	
    	let sendJsonData = [];
   	  	sendJsonData.push({mbId:mbId.value,csCode:csCode.value,opCode:opCode.value});
   	  	let clientData = JSON.stringify(sendJsonData);
    	postAjax("teacher/getScoreStandard",clientData,"addScoreStandard","json")
    }
    
    // ?????? ?????? ?????? ?????? ?????? ??????
    function addScoreStandard(jsonData){
    	let div = document.getElementById("modalBox");
    	
    	// data ????????? ??????
    	data = "";	
    	div.innerHTML = "";
  
    	for(i=0; i < jsonData.length; i++){
    		div.innerHTML += "<div><div name='itemBox' style='display:inline-block;'></div>&nbsp;"+ (i+1)+". <span>"+jsonData[i].itemName+"</span><input type='hidden' name='itemCode' value='"+jsonData[i].itemCode+"' /><input type='hidden' name='itemName' value='"+jsonData[i].itemName+"' /> <span name='itemPercent'>"+jsonData[i].itemPercent+"</span></div>";
    		data += jsonData[i].itemPercent + ",";
    		count = i;
    	}
    	
    }
    
    // ?????? ?????? ?????? ???
    function createBox(){
    	let div = document.getElementById("changeBox");
    	let changediv = document.getElementById("changeBox2");
    	let changediv3 = document.getElementById("changeBox3");
    	changediv3.innerHTML = "";
    	
    	if(div.innerHTML != ""){
     		div.innerHTML = "";
     		changediv.innerHTML = "";
    		getScoreStandard();
    	}else{
    		if(document.getElementsByName("itemBox")[0].innerHTML != ""){
    			for(i=0; i < count+1; i++){
     				let item = document.getElementsByName("itemBox")[i];
     				item.innerHTML = "";
     			}
    		}
    		
    		changediv.innerHTML = "";
    		div.innerHTML = "";
    		div.innerHTML += "<br><div> ???????????? </div>";
        	div.innerHTML += "<div><select name ='category' onChange='addName(this.options[this.selectedIndex].value)'>"+"</option>"+"<option value='T'>??????</option>"+"<option value='Q'>??????</option>"+"<option value='A'>??????</option>"+"<option value='E'>??????</option>"+"</select><input type='number' name='addGrade'/><div id='addName'></div></div>";
     		div.innerHTML += "<input type='button' value='????????????' onClick='plusScoreStandard()' />";
     		for(i=0; i < count+1; i++){
     			let item = document.getElementsByName("itemPercent")[i];
     			item.innerHTML = "<input type='number' name='itemPercentValue' value='"+data.split(",")[i]+"'/>";
     		}
     		div.innerHTML += "<div id='addScoreAll'></div>";
    	}
    	
    }
    
    // ?????? ?????? ?????? ???
    function deleteBox(){
    	let changediv = document.getElementById("changeBox");
    	let div = document.getElementById("changeBox2");
    	let modalBox = document.getElementById("modalBox");
    	let changediv3 = document.getElementById("changeBox3");
    	
    	if(div.innerHTML == ""){
    		changediv.innerHTML = "";
    		changediv3.innerHTML = "";
    		for(i=0; i < count+1; i++){
     			let item = document.getElementsByName("itemPercent")[i];
     			item.innerHTML = "<input type='number' name='item' value='"+data.split(",")[i]+"'/> <input type='button' value='??????' onClick='javascript:minusScoreStandard("+i+"); scoreMsg("+i+");' />";
     		}
    		
    		div.innerHTML += "<br><div id='scoreMsg'></div>";
    		
    	}else{
    		for(i=0; i < count+1; i++){
 				let item = document.getElementsByName("itemBox")[i];
 				item.innerHTML = "";
 			}
    		let changediv = document.getElementById("changeBox3");
    		changediv.innerHTML = "";
    		div.innerHTML = "";
    		getScoreStandard();
    	}    
    	
    }
    
    // ?????? ?????? ?????? ???
    function updateBox(){
    	let div = document.getElementById("changeBox");
    	let changediv = document.getElementById("changeBox3");
    	
    	if(changediv.innerHTML != ""){
    		changediv.innerHTML = "";
    		div.innerHTML = "";
    		getScoreStandard();
    	}else{
    		if(document.getElementsByName("itemBox")[0].innerHTML != ""){
    			for(i=0; i < count+1; i++){
     				let item = document.getElementsByName("itemBox")[i];
     				item.innerHTML = "";
     			}
    		}
    		
    		div.innerHTML = "";
    		changediv.innerHTML = "";
    		changediv.innerHTML += "<input type='button' value='????????????' onClick='updateScoreStandard()' />";
    		
     		for(i=0; i < count+1; i++){
     			let item = document.getElementsByName("itemPercent")[i];
     			item.innerHTML = "<input type='number' name='itemPercentValue' value='"+data.split(",")[i]+"'/>";
     		}
    	}
    	
    }
    
 	// ????????? ??????
    function scoreMsg(index){
    	let divMsg = document.getElementById("scoreMsg");
    	let itemName = document.getElementsByName("itemName")[index].value;
    	let resultScore = 0;
    	
    	for(i=0; i < count+1; i++){
    		if(i != index){
    		let itemPercentValue = document.getElementsByName("item")[i];
    		resultScore += parseInt(itemPercentValue.value);
    		}
    	}
    	
    	if(resultScore != 100){
    	divMsg.innerText = (index+1)+"."+itemName +" ????????? ???????????? ??????"+resultScore+"?????????";
    	}
 	}
    
 	// ????????? ?????? -> ??????
    function addName(data){
  	  if(data == "E"){
  		  let div = document.getElementById("addName");
  		  div.innerHTML = "?????? : <input name='nameBox' type='text'/>";
  	  }else{
  		  let test = document.getElementById("addName");
  		  if(test.innerText != ""){
  			  test.innerText = ""; 
  		  }	  
  	  }
    }
    
 	
 	// ?????? ?????? ????????? ?????????  0??? : insert , ????????? : update
 	function plusScoreStandard() {
 		let mbId = document.getElementsByName("mbId")[0];
    	let csCode = document.getElementsByName("csCode")[0];
    	let opCode = document.getElementsByName("opCode")[0];
    	let check = false;
    	let check2 = true;
 		let resultScore = 0;
 		let addScoreAll = document.getElementById("addScoreAll");
 		
    	let category = document.getElementsByName("category")[0];
    	let addGrade = document.getElementsByName("addGrade")[0];
    	// E??? ????????? ???????????? ???????????? + 0?????????
    	let sendJsonData = [];
    	
    	if(category.value == "T"){
    		sendJsonData.push({mbId:mbId.value,csCode:csCode.value,opCode:opCode.value,itemCode:category.value,itemName:"??????",itemPercent:addGrade.value});
    	}else if(category.value == "Q"){
    		sendJsonData.push({mbId:mbId.value,csCode:csCode.value,opCode:opCode.value,itemCode:category.value,itemName:"??????",itemPercent:addGrade.value});
    	}else if(category.value == "A"){
    		sendJsonData.push({mbId:mbId.value,csCode:csCode.value,opCode:opCode.value,itemCode:category.value,itemName:"??????",itemPercent:addGrade.value});
    	}else{
    		let nameBox = document.getElementsByName("nameBox")[0];
    		sendJsonData.push({mbId:mbId.value,csCode:csCode.value,opCode:opCode.value,itemCode:category.value,itemName:nameBox.value,itemPercent:addGrade.value});
			if(nameBox.value == ""){
				check2 = false;
				alert("????????? ???????????????.");
			}
    	}
    	resultScore += parseInt(addGrade.value);
    	
    	for(i=0; i < count+1; i++){
    		let itemCode = document.getElementsByName("itemCode")[i];
    		let itemName = document.getElementsByName("itemName")[i];
        	let itemPercentValue = document.getElementsByName("itemPercentValue")[i];
        	sendJsonData.push({mbId:mbId.value,csCode:csCode.value,opCode:opCode.value,itemCode:itemCode.value,itemPercent:itemPercentValue.value});
        	resultScore += parseInt(itemPercentValue.value);
    	}
    	
    	if(resultScore == 100){
    		check = true;
    	}else{
    		
    		addScoreAll.innerText = "?????? ???????????? : "+resultScore +" ?????????";
    		alert("???????????? 100?????? ???????????????.");
    	}
    	
    	if(check && check2){
    		addScoreAll.innerText = "";
    		let clientData = JSON.stringify(sendJsonData);
     		postAjax('teacher/plusScoreStandard',clientData,'sendMsg','json')
    	}
   	  	
 	}
 	
 	// ?????? ?????? ????????? ?????????
 	function minusScoreStandard(index) {
 		
 		let mbId = document.getElementsByName("mbId")[0];
    	let csCode = document.getElementsByName("csCode")[0];
    	let opCode = document.getElementsByName("opCode")[0];
 		
    	let itemCode = document.getElementsByName("itemCode")[index];
		let itemName = document.getElementsByName("itemName")[index];
    	let itemPercentValue = document.getElementsByName("item")[index];
    	
 		let check = false;
 		let sendJsonData = [];
 		let resultScore = 0;
 		
 		// delete ???
 		sendJsonData.push({mbId:mbId.value,csCode:csCode.value,opCode:opCode.value,itemCode:itemCode.value,itemPercent:itemPercentValue.value});
 		
 		// ????????? ????????????
 		for(i=0; i < count+1; i++){
 			if(i != index){
    		let itemCode = document.getElementsByName("itemCode")[i];
    		let itemName = document.getElementsByName("itemName")[i];
        	let itemPercentValue = document.getElementsByName("item")[i];
        	sendJsonData.push({mbId:mbId.value,csCode:csCode.value,opCode:opCode.value,itemCode:itemCode.value,itemPercent:itemPercentValue.value});
        	resultScore += parseInt(itemPercentValue.value);
 			}
    	}
 		
 		if(resultScore == 100){
    		check = true;
    	}else{
    		alert("???????????? 100?????? ???????????????.");
    	}
 		
 		if(check){
 			let scoreMsg = document.getElementById("scoreMsg");
 			scoreMsg.innerText = "";
 			let clientData = JSON.stringify(sendJsonData);
 	 		postAjax('teacher/minusScoreStandard',clientData,'sendMsg','json')
 		}
 		
 	}
 	
 	// ?????? ?????? ????????? ?????????
 	function updateScoreStandard(){
 		let mbId = document.getElementsByName("mbId")[0];
    	let csCode = document.getElementsByName("csCode")[0];
    	let opCode = document.getElementsByName("opCode")[0];
    	
    	let check = false;
    	let sendJsonData = [];
    	let resultScore = 0;
    	
    	// ????????? ????????????
 		for(i=0; i < count+1; i++){
    		let itemCode = document.getElementsByName("itemCode")[i];
    		let itemName = document.getElementsByName("itemName")[i];
        	let itemPercentValue = document.getElementsByName("itemPercentValue")[i];
        	sendJsonData.push({mbId:mbId.value,csCode:csCode.value,opCode:opCode.value,itemCode:itemCode.value,itemPercent:itemPercentValue.value});
        	resultScore += parseInt(itemPercentValue.value);
    	}
    	
 		if(resultScore == 100){
    		check = true;
    	}else{
    		alert(resultScore);
    		alert("???????????? 100?????? ???????????????.");
    	}
    	
 		
 		if(check){
 		let clientData = JSON.stringify(sendJsonData);
 		postAjax('teacher/updateScoreStandard',clientData,'sendMsg','json')
 		}
 	}
 	
 	// ?????? ????????? ??? ??????
 	function sendMsg(message){
 		alert(JSON.parse(JSON.stringify(message)).message);
 		getScoreStandard();
 	}
 	
    </script>


</head>
    
<body onload="mbTypeCheck('${mbType}'); getAjax('https://api.ipify.org','format=json', 'getPublicIp');">
	
	<nav  class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid" style="display: flex;">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="main" id="test" style="color: white;"><img
						src="resources/images/eljl_LOGO_final.png"
						style="height: 30px; width: 100px;" /></a></li>
			</ul>
		</div>

		<div id= "bannerBox" style="margin: 0 auto;">
			<ul class="nav navbar-nav">
				<li><a style="color: white;" onClick="moveStream()">?????????</a></li>
					<li><a  style="color: white;" onClick="moveClass()">??????</a></li>
					<li class="teItem"><a  style="color: white;" onClick="moveAttend()">?????????</a></li>
					<li class="teItem"><a  style="color: white;" onClick="moveStuManage()">????????????</a></li>
					<li class="stuItem"><a  style="color: white;" onClick="moveMyPage()">???????????????</a></li>
			</ul>
		</div>
		<div id="bannerBox2">
			<ul class="nav navbar-nav navbar-right">
				<li class="teItem"><a onClick="moveSetting()"><span class="glyphicon glyphicon-cog"
						style="color: white;"></span></a></li>
				<li><a style="color: white;" onClick="logOut('${mbId}')"><span
						class="glyphicon glyphicon-log-out"></span> ????????????</a></li>
			</ul>
		</div>
	</div>
</nav>
	
	<input type='hidden' name='mbId' value='${mbId}' />
	<input type='hidden' name='csCode' value='${csCode}' />
	<input type='hidden' name='opCode' value='${opCode}' />
	<input type='hidden' name='opName' value='${opName}' />
	
	<div style="height:200px;">
	</div>
	
	<div style="magin:0 auto;">
		<div style="display: inline-block; margin-right:100px;">
			<div class="button" data-toggle="modal" data-target="#updateClass1" onClick="getSubject()">???????????? ??????</div>
		</div>
		<div style="display: inline-block; margin-left:100px;">
		<div class="button" data-toggle="modal" data-target="#updateClass2" onClick="getScoreStandard()">?????? ?????? ?????? ??????</div>
		</div>
	</div>

<%@ page import="java.util.*, java.text.*" %>
<% Date date = new Date(); 
SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
String strdate = simpleDate.format(date);
%>

<!-- ????????? ?????? ????????? ????????? -->
<div class="modal fade" id="updateClass1" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">???????????? ??????</h4>
        </div>
        <div class="modal-body">
          <p>?????? ???</p>
          	<div id="csName"></div><br>
           <p>?????? ???</p>
             <input type="text" name="opName">	
           <p>?????? ??????</p>
          	<input type="date" name="startDate" min="<%=strdate %>" >
            <p>?????? ??????</p>
          	<input type="date" name="endDate"  min="<%=strdate %>" onblur="endDateCheck()">
        </div>
        <div class="modal-footer">
         <button type="button" class="btn btn-default" data-dismiss="modal" data-toggle="modal" data-target="#createClass2" onClick="updateSubject()">??????</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">??????</button>
        </div>
        
         
      
      </div>
      
    </div>
  </div>
  
<!-- ????????? ?????? ????????? ????????? -->
  <div style="overflow:scroll;" class="modal fade" id="updateClass2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">?????? ?????? ?????? ??????</h4>
        </div>
        <div class="modal-body" id="modal-body">
          <p> ?????? ?????? ?????? </p>
          <div style="color:red;">*?????? ????????? ???????????? ???????????? ??????????????????.</div><br>
          <div id="modalBox">
          </div>
          <div id="changeBox"></div>
          <div id="changeBox2"></div>
          <div id="changeBox3"></div>          
         
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" onClick="updateBox()">??????</button>
          <button type="button" class="btn btn-default" onClick="createBox()">??????</button>
          <button type="button" class="btn btn-default" onClick="deleteBox()">??????</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">??????</button>
        </div>
        
          
        
      </div>
      
    </div>
  </div>

</body>
</html>