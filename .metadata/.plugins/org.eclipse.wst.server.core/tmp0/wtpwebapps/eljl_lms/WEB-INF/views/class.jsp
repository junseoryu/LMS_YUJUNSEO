<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ page import="java.util.*, java.text.*"%>
<head>
<title>LMS</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
   href="http://humy2833.dothome.co.kr/customizing.html#">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript"
   src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet"> 
<link rel="stylesheet" href="resources/css/master.css">
<link rel="stylesheet" href="resources/css/class.css">
<style>
a:hover {
   color: black;
}

#test : hover {
   color: black;
}
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
   margin-bottom: 0;
   border-radius: 0;
   background-color: #375a7f;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
   height: 450px
}

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
   .row.content {
      height: auto;
   }
}

#bannerBox>ul {
   margin-top: 5px;
}

#bannerBox2>ul {
   margin-top: 5px;
}
</style>
<script type="text/javascript" src="resources/js/master.js"></script>
<script type="text/javascript" src="resources/js/main.js"></script>
<script type="text/javascript" src="resources/js/class.js?var=1"></script>
<%-- <link rel="stylesheet" type=text/css href="resources/css/class.css"> --%>
</head>

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


<header>
   <div class="container" style="padding-top: 60px"></div>
</header>
<body onload="mbTypeCheck('${mbType}'); allPostList(); deleteGlypicon();">
   <%
   Date date = new Date();
   SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
   String strdate = simpleDate.format(date);
   %>

   <input type='hidden' name='mbId' value='${mbId}' />
   <input type='hidden' name='csCode' value='${csCode}' />
   <input type='hidden' name='opCode' value='${opCode}' />
   <input type='hidden' name='mbType' value='${mbType}' />
   <input type='hidden' name='stuId' value='${stuId}' />
   <input type='hidden' name='opName' value='${opName}' />

   <div class="row content">
      <div class="col-sm-1 text-left"></div>
      <div class="col-sm-10 text-left">
         <h1>
            ??????????????? <a data-toggle="modal" data-target="#scoreList"><span
               class="glyphicon glyphicon-plus" style="float: right"
               onClick="getCategoryList()"></span></a>
         </h1>

         <div>
            <div id="allPostList" class="well well-lg"></div>
         </div>
         <div>
            <!-- ???????????? ????????? -->
            <div class="modal fade" id="scoreList" role="dialog">
               <div class="modal-dialog">

                  <!-- Modal content-->
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                           onClick="deleteScoreValue()">&times;</button>
                        <h4 class="modal-title">????????????</h4>
                     </div>
                     <div class="modal-body">

                        <div id="score" data-dismiss="modal"></div>
                        <div class="modal-footer">
                           <button type="button" class="btn btn-default"
                              data-dismiss="modal" >??????</button>
                        </div>
                     </div>

                  </div>
               </div>
            </div>



            <!-- ?????? ????????? -->
            <div class="modal fade" id="createScoreE" role="dialog">
               <div class="modal-dialog">
                  <!-- Modal content-->
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                           onClick="deleteScoreValue()">&times;</button>
                        <h4 class="g-modal-title">
                           <img src="resources/images/class_e3.png"
                              style="height: 45px; width: 45px;" /> ?????? </h4>
                     </div>
                     <div class="modal-body-m">
                        <p>??????</p>
                        <input class="mbox" type="text" name="etcTitle">
                        <p>??????</p>
                        <input class="mbox2" type="text" name="etcContents">

                        <div class="filebox bs3-primary preview-image">
                           <img src="resources/images/file-up.png"
                              style="height: 35px; width: 35px;" /> 
                              <input class="upload-name" value="??????" disabled="disabled" style="width: 200px;"> 
                              <label for="input_file">?????????</label>
                           <input type="file" id="input_file" class="upload-hidden">
                        </div>

                        <p>?????? ??????</p>
                        <input type="date" name="etcSDate" min="<%=strdate%>">
                        <p>?????? ??????</p>
                        <input type="date" name="etcEDate" min="<%=strdate%>"
                           onblur="endDateCheck()">
                        <div class="modal-footer">
                           <button type="button" class="btn btn-default"
                              onClick="CreateEtc()">??????</button>
                           <button type="button" class="btn btn-default"
                              data-dismiss="modal" onClick="deleteScoreValue()">??????</button>
                        </div>
                     </div>

                  </div>
               </div>
            </div>

            <!-- ?????? ????????? -->
            <div class="modal fade" id="createScoreQ" role="dialog">
               <div class="modal-dialog">

                  <!-- Modal content-->
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                           onClick="deleteScoreValue()">&times;</button>
                        <h4 class="q-modal-title"><img
                  src="resources/images/class_q3.png"
                  style="height: 45px; width: 45px;" /> ??????</h4>
                     </div>
                     <div class="modal-body-m">
                        <p>??????</p>
                           <input class="mbox" type="text" name="quizTitle">
                        <p>??????</p>
                           <input class="mbox" type="text" name="quizContents">
                        <p>??????</p>
                           <input class="mbox" type="text" name="quizAnswer">
                        <p>?????? ??????</p>
                        <input type="date" name="quizSDate" min="<%=strdate%>">
                        <p>?????? ??????</p>
                        <input type="date" name="quizEDate" min="<%=strdate%>"
                           onblur="endDateCheck()">
                        <div class="modal-footer">
                           <button type="button" class="btn btn-default" onClick="CreateQuiz()">??????</button>
                           <button type="button" class="btn btn-default"
                              data-dismiss="modal" onClick="deleteScoreValue()">??????</button>
                        </div>
                     </div>

                  </div>
               </div>
            </div>


            <!-- ?????? ????????? -->
            <div class="modal fade" id="createScoreT" role="dialog">
               <div class="modal-dialog">

                  <!-- Modal content-->
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                           onClick="deleteScoreValue()">&times;</button>
                        <h4 class="h-modal-title"><img
                  src="resources/images/class_h4.png"
                  style="height: 45px; width: 45px;" /> ??????</h4>
                     </div>
                     <div class="modal-body-m">
                        <p>??????</p>
                           <input class="mbox" type="text" name="taskTitle">
                        <p>??????</p>
                           <input class="mbox2" type="text" name="taskContents">
                        <div class="filebox bs3-primary preview-image">
                           <img src="resources/images/file-up.png"
                              style="height: 35px; width: 35px;" /> 
                              <input class="upload-name" value="??????" disabled="disabled" style="width: 200px;"> 
                              <label for="input_file">?????????</label>
                           <input type="file" id="input_file" class="upload-hidden">
                        </div>
                        <p>?????? ??????</p>
                        <input type="date" name="taskSDate" min="<%=strdate%>">
                        <p>?????? ??????</p>
                        <input type="date" name="taskEDate" min="<%=strdate%>"
                           onblur="endDateCheck()">
                        <div class="modal-footer">
                           <button type="button" class="btn btn-default" onClick="CreateTask()">??????</button>
                           <button type="button" class="btn btn-default"
                              data-dismiss="modal" onClick="deleteScoreValue()">??????</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>


            <!-- ?????? ??????(??????) -->
            <div class="modal fade" id="viewQuizT" role="dialog">
               <div class="modal-dialog">

                  <!-- Modal content-->
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                           onClick="deleteScoreValue()">&times;</button>
                        <h4 class="modal-title">????????????</h4>
                     </div>
                     <div class="modal-body">
                        <div>??????</div>
                        <div id="viewQuizTitleT"></div>
                        <div>??????</div>
                        <div id=viewQuizContentsT></div>
                        <div>??????</div>
                        <div id="viewQuizAnswerT"></div>
                        <div>??????</div>
                        <div>
                           <span id="viewQuizStartT"></span> ~ <span id="viewQuizEndT"></span>
                        </div>
                        <div class="modal-footer">
                          
                           <button type="button" class="btn btn-default"
                              data-dismiss="modal">??????</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>

            <!-- ?????? ??????(??????) -->
            <div class="modal fade" id="viewQuizS" role="dialog">
               <div class="modal-dialog">

                  <!-- Modal content-->
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                           onClick="deleteScoreValue()">&times;</button>
                        <h4 class="modal-title">????????????</h4>
                     </div>
                     <div class="modal-body">
                        <div>??????</div>
                        <div id="viewQuizTitleS"></div>
                        <div>??????</div>
                        <div id=viewQuizContentsS></div>
                        <div>??????</div>
                        <input type="text" id="viewQuizAnswerS">
                        <div>??????</div>
                        <div>
                           <span id="viewQuizStartS"></span> ~ <span id="viewQuizEndS"></span>
                        </div>
                        <div class="modal-footer">
                           <button type="button" class="btn btn-default"
                              onClick="submitQuiz()">??????</button>
                           <button type="button" class="btn btn-default"
                              data-dismiss="modal">??????</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>



            <!-- ?????? ??????(??????) -->
            <div class="modal fade" id="viewTaskT" role="dialog">
               <div class="modal-dialog">

                  <!-- Modal content-->
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                           onClick="deleteScoreValue()">&times;</button>
                        <h4 class="modal-title">????????????</h4>
                     </div>
                     <div class="modal-body">
                        <div>??????</div>
                        <div id="viewTaskTitleT"></div>
                        <div>??????</div>
                        <div id=viewTaskContentsT></div>
                        <div>??????</div>
                        <div id="viewTaskAnswerT"></div>
                        <div>??????</div>
                        <div>
                           <span id="viewTaskStartT"></span> ~ <span id="viewTaskEndT"></span>
                        </div>
                        <div class="modal-footer">
                           <button type="button" class="btn btn-default" onClick="moveStuReport()">?????? ??????</button>
                           <button type="button" class="btn btn-default"
                              data-dismiss="modal" onClick="allPostList()">??????</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>


            <!-- ?????? ??????(??????) -->
            <div class="modal fade" id="viewTaskS" role="dialog">
               <div class="modal-dialog">

                  <!-- Modal content-->
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                           onClick="deleteScoreValue()">&times;</button>
                        <h4 class="modal-title">????????????</h4>
                     </div>
                     <div class="modal-body">
                        <div>??????</div>
                        <div id="viewTaskTitleS"></div>
                        <div>??????</div>
                        <div id=viewTaskContentsS></div>
                        <div>??????</div>
                        <input type="text" id="submitTaskAnswerS">
                        <div>??????</div>
                        <div id="viewTaskfileS"></div>
                        <div>?????? ??????</div>
                        <input type="text" id="submitTaskfileS">
                     </div>
                     <div>??????</div>
                     <div>
                        <span id="viewTaskStartS"></span> ~ <span id="viewTaskEndS"></span>
                     </div>
                     <div class="modal-footer">
                        <button type="button" class="btn btn-default"
                           onClick="submitTask()">??????</button>
                        <button type="button" class="btn btn-default"
                           data-dismiss="modal">??????</button>
                     </div>
                  </div>
               </div>
            </div>
         </div>

         <!-- ?????? ??????(??????) -->
         <div class="modal fade" id="viewETCT" role="dialog">
            <div class="modal-dialog">

               <!-- Modal content-->
               <div class="modal-content">
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal"
                        onClick="deleteScoreValue()">&times;</button>
                     <h4 class="modal-title">????????????</h4>
                  </div>
                  <div class="modal-body">
                     <div>??????</div>
                     <div id="viewETCTitleT"></div>
                     <div>??????</div>
                     <div id=viewETCContentsT></div>
                     <div>??????</div>
                     <div id="viewETCAnswerT"></div>
                     <div>??????</div>
                     <div>
                        <span id="viewETCStartT"></span> ~ <span id="viewETCEndT"></span>
                     </div>
                     <div class="modal-footer">
                        <button type="button" class="btn btn-default" onClick="moveStuEtc()">?????? ??????</button>
                        <button type="button" class="btn btn-default"
                           data-dismiss="modal">??????</button>
                     </div>
                  </div>
               </div>
            </div>
         </div>


         <!-- ?????? ??????(??????) -->
         <div class="modal fade" id="viewETCS" role="dialog">
            <div class="modal-dialog">

               <!-- Modal content-->
               <div class="modal-content">
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal"
                        onClick="deleteScoreValue()">&times;</button>
                     <h4 class="modal-title">????????????</h4>
                  </div>
                  <div class="modal-body">
                     <div>??????</div>
                     <div id="viewETCTitleS"></div>
                     <div>??????</div>
                     <div id=viewETCContentsS></div>
                     <div>??????</div>
                     <div id="viewETCfileS"></div>
                     <div>?????? ??????</div>
                     <input type="text" id="viewETCAnswerS">
                  </div>
                  <div>??????</div>
                  <div>
                     <span id="viewETCStartS"></span> ~ <span id="viewETCEndS"></span>
                  </div>
                  <div class="modal-footer">
                     <button type="button" class="btn btn-default"
                        onClick="submitETC()">??????</button>
                     <button type="button" class="btn btn-default"
                        data-dismiss="modal">??????</button>
                  </div>
               </div>
            </div>
         </div>
      </div>

      <!-- ?????? ?????? ??????(??????) -->
      <div class="modal fade" id="viewPostBoxT" role="dialog">
         <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal"
                     onClick="allPostList()">&times;</button>
                  <h4 class="modal-title">??????&??????</h4>
               </div>
               <div class="modal-body">
                  <div id="updatePostBox" data-dismiss="modal"></div>
                  <div id="deletePostBox" data-dismiss="modal"></div>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal"
                     onClick="allPostList()">??????</button>
               </div>
            </div>
         </div>
      </div>
   </div>

            
            
            <!-- ?????? ?????? -->
            <div class="modal fade" id="updateTask" role="dialog">
               <div class="modal-dialog">

                  <!-- Modal content-->
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                           onClick="allPostList()">&times;</button>
                        <h4 class="modal-title">????????????</h4>
                     </div>
                     <div class="modal-body">
                     
                     <div class="m-view">??????</div>
                        <div id="updateTaskTitle"></div>
                     <div class="m-view">??????</div>
                        <div id=updateTaskContents></div>
                     <div class="m-view">?????? <img
                  src="resources/images/file-down.png"
                  style="height: 35px; width: 35px;" /></div>      
                        <div id="updateTaskAnswer"></div>
                     <div class="m-view">??????</div><div>        
                        <span id="updateTaskStart"></span>
                         ~ 
                        <span id="updateTaskEnd"></span>   
                                    </div>   
                        <div class="modal-footer">
                        <button type="button" class="btn btn-default" onClick="updateTask()">??????</button>
                           <button type="button" class="btn btn-default"
                              data-dismiss="modal" onClick="allPostList()">??????</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            
            
            
            <!-- ?????? ?????? -->
            <div class="modal fade" id="updateQuiz" role="dialog">
               <div class="modal-dialog">

                  <!-- Modal content-->
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                           onClick="allPostList()">&times;</button>
                        <h4 class="modal-title">????????????</h4>
                     </div>
                     <div class="modal-body2">
                     
                     <div class="m-view2">??????</div>
                        <div id="updateQuizTitle"></div>
                     <div class="m-view2">??????</div>
                        <div id=updateQuizContents></div>
                     <div class="m-view2">??????</div>      
                        <div id="updateQuizAnswer"></div>
                     <div class="m-view2">??????</div><div>        
                        <span id="updateQuizStart"></span>
                         ~ 
                        <span id="updateQuizEnd"></span>   
                                    </div>   
                        <div class="modal-footer">
                        <button type="button" class="btn btn-default" onClick="updateQuiz()">??????</button>
                           <button type="button" class="btn btn-default"
                              data-dismiss="modal" onClick="allPostList()">??????</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            
            
            
            <!-- ?????? ?????? -->
            <div class="modal fade" id="deleteTask" role="dialog">
               <div class="modal-dialog">

                  <!-- Modal content-->
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                           onClick="allPostList()">&times;</button>
                        <h4 class="modal-title">????????????</h4>
                     </div>
                     <div id="dbox">?????? ?????????????????????????</div>
                        <div class="modal-footer">
                        <button type="button" class="btn btn-default" onClick="deleteTask()">??????</button>
                           <button type="button" class="btn btn-default"
                              data-dismiss="modal" onClick="allPostList()">??????</button>
                        </div>
                     </div>
                  </div>
               </div>
               
            <!-- ?????? ?????? -->
            <div class="modal fade" id="deleteQuiz" role="dialog">
               <div class="modal-dialog">

                  <!-- Modal content-->
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                           onClick="allPostList()">&times;</button>
                        <h4 class="modal-title">????????????</h4>
                     </div>
                     <div id="dbox">?????? ?????????????????????????</div>
                        <div class="modal-footer">
                        <button type="button" class="btn btn-default" onClick="deleteQuiz()">??????</button>
                           <button type="button" class="btn btn-default"
                              data-dismiss="modal" onClick="allPostList()">??????</button>
                        </div>
                     </div>
                  </div>
               </div>
               
               
            <!-- ?????? ?????? -->
            <div class="modal fade" id="deleteETC" role="dialog">
               <div class="modal-dialog">

                  <!-- Modal content-->
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                           onClick="allPostList()">&times;</button>
                        <h4 class="modal-title">????????????</h4>
                     </div>
                     <div id="dbox">?????? ?????????????????????????</div>
                        <div class="modal-footer">
                        <button type="button" class="btn btn-default" onClick="deleteETC()">??????</button>
                           <button type="button" class="btn btn-default"
                              data-dismiss="modal" onClick="allPostList()">??????</button>
                        </div>
                     </div>
                  </div>
               </div>

   <!-- ?????? ?????? ??????(??????)1 -->
   <div class="modal fade" id="resultCheckQuiz" role="dialog">
      <div class="modal-dialog">

         <!-- Modal content-->
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal"
                  onClick="allPostList()">&times;</button>
               <h4 class="modal-title">?????? ??????</h4>
            </div>
            <div class="modal-body">
               <div id="resultCheckQuizBox" onClick="resultCheckQuiz()"
                  data-toggle="modal" data-target="#resultCheckQuizView"
                  data-dismiss="modal">??????</div>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-default" data-dismiss="modal"
                  onClick="allPostList()">??????</button>
            </div>
         </div>
      </div>
   </div>

   <!-- ?????? ?????? ??????(??????)2 -->
   <div class="modal fade" id="resultCheckQuizView" role="dialog">
      <div class="modal-dialog">

         <!-- Modal content-->
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal"
                  onClick="deleteQuizInfo()">&times;</button>
               <h4 class="modal-title">??? ?????? ??????</h4>
            </div>
            <div class="modal-body">
               <div>
                  ?????? ??????
                  <div id="resultQuizT"></div>
               </div>
               <br>
               <div>
                  ??? ??????
                  <div id="resultQuizS"></div><br>
                  <div id="resultQuiz"></div>
               </div>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-default" data-dismiss="modal"
                  onClick="deleteQuizInfo()">??????</button>
            </div>
         </div>
      </div>
   </div>

<!-- ?????? ?????? ?????? ??? ??????(??????)1 -->
   <div class="modal fade" id="cancelETCReport" role="dialog">
      <div class="modal-dialog">

         <!-- Modal content-->
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal"
                  onClick="allPostList()">&times;</button>
               <h4 class="modal-title">?????? ??????&??????</h4>
            </div>
            <div class="modal-body">
               <div id="viewMyETC" onClick="viewMyETC()"
                  data-toggle="modal" data-target="#viewMyETCView"
                  data-dismiss="modal">??????</div><br>
               <div id="cancelETCBox" onClick="cancelETCReport()"
                  data-dismiss="modal">??????</div>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-default" data-dismiss="modal"
                  onClick="allPostList()">??????</button>
            </div>
         </div>
      </div>
   </div>

<!-- ?????? ?????? ?????? ??? ??????(??????)2 -->
   <div class="modal fade" id="viewMyETCView" role="dialog">
      <div class="modal-dialog">

         <!-- Modal content-->
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal"
                  onClick="allPostList()">&times;</button>
               <h4 class="modal-title">??? ??????</h4>
            </div>
            <div class="modal-body">
               <div>??? ??????</div>
               <div id="resultETC"></div>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-default" data-dismiss="modal"
                  onClick="allPostList()">??????</button>
            </div>
         </div>
      </div>
   </div>


<!-- ?????? ?????? ?????? ??? ??????(??????)1 -->
   <div class="modal fade" id="cancelTaskReport" role="dialog">
      <div class="modal-dialog">

         <!-- Modal content-->
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal"
                  onClick="allPostList()">&times;</button>
               <h4 class="modal-title">?????? ??????&??????</h4>
            </div>
            <div class="modal-body">
               <div id="viewMyTask" onClick="viewMyTask()"
                  data-toggle="modal" data-target="#viewMyTaskView"
                  data-dismiss="modal">??????</div><br>
               <div id="cancelETCBox" onClick="deleteTask()"
                  data-dismiss="modal">??????</div>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-default" data-dismiss="modal"
                  onClick="allPostList()">??????</button>
            </div>
         </div>
      </div>
   </div>

<!-- ?????? ?????? ?????? ??? ??????(??????)2 -->
   <div class="modal fade" id="viewMyTaskView" role="dialog">
      <div class="modal-dialog">

         <!-- Modal content-->
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal"
                  onClick="allPostList()">&times;</button>
               <h4 class="modal-title">??? ??????</h4>
            </div>
            <div class="modal-body">
               <div>??? ??????</div>
               <div id="resultTaskFile"></div><br><br>
               <div>??? ??????</div>
               <div id="resultTaskAnswer"></div>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-default" data-dismiss="modal"
                  onClick="allPostList()">??????</button>
            </div>
         </div>
      </div>
   </div>

</body>
</html>