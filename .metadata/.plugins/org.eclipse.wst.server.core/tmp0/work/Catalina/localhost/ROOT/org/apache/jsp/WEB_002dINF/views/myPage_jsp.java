/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.46
 * Generated at: 2021-10-04 11:04:19 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class myPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP?????? ?????? GET, POST ?????? HEAD ??????????????? ???????????????. Jasper??? OPTIONS ????????? ?????? ???????????????.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>???????????????</title>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("   href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("   href=\"http://humy2833.dothome.co.kr/customizing.html#\">\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap\" rel=\"stylesheet\"> \r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/css/master.css\">\r\n");
      out.write("<script\r\n");
      out.write("   src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\r\n");
      out.write("<script\r\n");
      out.write("   src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\"\r\n");
      out.write("   src=\"https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js\"></script>\r\n");
      out.write("   \r\n");
      out.write("<style>\r\n");
      out.write("  a:hover {\r\n");
      out.write("   color: black;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#test : hover {\r\n");
      out.write("   color: black;\r\n");
      out.write("}\r\n");
      out.write("/* Remove the navbar's default margin-bottom and rounded borders */\r\n");
      out.write(".navbar {\r\n");
      out.write("   margin-bottom: 0;\r\n");
      out.write("   border-radius: 0;\r\n");
      out.write("   background-color: #375a7f;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Set height of the grid so .sidenav can be 100% (adjust as needed) */\r\n");
      out.write(".row.content {\r\n");
      out.write("   height: 450px\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Set gray background color and 100% height */\r\n");
      out.write(".sidenav {\r\n");
      out.write("   padding-top: 20px;\r\n");
      out.write("   background-color: #ffffff;\r\n");
      out.write("   height: 100%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Set black background color, C and some padding */\r\n");
      out.write("footer {\r\n");
      out.write("   background-color: #555;\r\n");
      out.write("   color: blue;\r\n");
      out.write("   padding: 15px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* On small screens, set height to 'auto' for sidenav and grid */\r\n");
      out.write("@media screen and (max-width: 767px) {\r\n");
      out.write("   .sidenav {\r\n");
      out.write("      height: auto;\r\n");
      out.write("      padding: 15px;\r\n");
      out.write("   }\r\n");
      out.write("   .row.content {\r\n");
      out.write("      height: auto;\r\n");
      out.write("   }\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#bannerBox > ul{\r\n");
      out.write("   margin-top: 5px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#bannerBox2 > ul{\r\n");
      out.write("   margin-top: 5px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body onload=\"getAjax('https://api.ipify.org','format=json', 'getPublicIp');\">\r\n");
      out.write("<div id=\"vue\" class=\"container\">\r\n");
      out.write("<input type='hidden' name='mbType' value='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${mbType}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("' />\r\n");
      out.write("   <input type='hidden' name='mbId' value='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${mbId}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("' />\r\n");
      out.write("   <input type='hidden' name='csCode' value='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${csCode}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("' />\r\n");
      out.write("   <input type='hidden' name='opCode' value='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${opCode}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("' />\r\n");
      out.write("   <input type='hidden' name='opName' value='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${opName}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("' />\r\n");
      out.write("\r\n");
      out.write("   <nav  class=\"navbar navbar-inverse navbar-fixed-top\">\r\n");
      out.write("   <div class=\"container-fluid\" style=\"display: flex;\">\r\n");
      out.write("      <div class=\"navbar-header\">\r\n");
      out.write("         <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\"\r\n");
      out.write("            data-target=\"#myNavbar\">\r\n");
      out.write("            <span class=\"icon-bar\"></span> <span class=\"icon-bar\"></span> <span\r\n");
      out.write("               class=\"icon-bar\"></span>\r\n");
      out.write("         </button>\r\n");
      out.write("         <a class=\"navbar-brand\" href=\"#\"></a>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\r\n");
      out.write("         <ul class=\"nav navbar-nav\">\r\n");
      out.write("            <li><a href=\"main\" id=\"test\" style=\"color: white;\"><img\r\n");
      out.write("                  src=\"resources/images/eljl_LOGO_final.png\"\r\n");
      out.write("                  style=\"height: 30px; width: 100px;\" /></a></li>\r\n");
      out.write("         </ul>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("      <div id= \"bannerBox\" style=\"margin: 0 auto;\">\r\n");
      out.write("         <ul class=\"nav navbar-nav\">\r\n");
      out.write("            <li><a style=\"color: white;\" onClick=\"moveStream()\">?????????</a></li>\r\n");
      out.write("               <li><a  style=\"color: white;\" onClick=\"moveClass()\">??????</a></li>\r\n");
      out.write("               <li class=\"teItem\"><a  style=\"color: white;\" onClick=\"moveAttend()\">?????????</a></li>\r\n");
      out.write("               <li class=\"teItem\"><a  style=\"color: white;\" onClick=\"moveStuManage()\">????????????</a></li>\r\n");
      out.write("               <li class=\"stuItem\"><a  style=\"color: white;\" onClick=\"moveMyPage()\">???????????????</a></li>\r\n");
      out.write("         </ul>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div id=\"bannerBox2\">\r\n");
      out.write("         <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("            <li class=\"teItem\"><a onClick=\"moveSetting()\"><span class=\"glyphicon glyphicon-cog\"\r\n");
      out.write("                  style=\"color: white;\"></span></a></li>\r\n");
      out.write("            <li><a style=\"color: white;\" @click=\"logOut(info.stuId)\"><span\r\n");
      out.write("                  class=\"glyphicon glyphicon-log-out\"></span> ????????????</a></li>\r\n");
      out.write("         </ul>\r\n");
      out.write("      </div>\r\n");
      out.write("   </div>\r\n");
      out.write("</nav>\r\n");
      out.write("   <!-- ????????? -->\r\n");
      out.write("   <div style=\"height: 60px;\"></div>\r\n");
      out.write("   <div class=\"container\">\r\n");
      out.write("      <div class=\"row\">\r\n");
      out.write("         <h2>???????????????</h2>\r\n");
      out.write("         <!-- ???????????? -->\r\n");
      out.write("         \r\n");
      out.write("         <div>\r\n");
      out.write("            <div>\r\n");
      out.write("               <table class=\"table table-hover\">\r\n");
      out.write("                  <thead>\r\n");
      out.write("                     <h3>?????? ??????</h3>\r\n");
      out.write("                     <tr>\r\n");
      out.write("                        <th scope=\"col\">??????</th>\r\n");
      out.write("                        <th scope=\"col\">??????</th>\r\n");
      out.write("                        <th scope=\"col\">?????????</th>\r\n");
      out.write("                        <th scope=\"col\">??????</th>\r\n");
      out.write("                        <th scope=\"col\">????????????</th>\r\n");
      out.write("                     </tr>\r\n");
      out.write("                  </thead>\r\n");
      out.write("                  <tbody>\r\n");
      out.write("                     <tr data-toggle=\"modal\" data-target=\"#showTaskView\" @click=\"dataMove(index)\" v-for=\"(grade, index) in gradeList\">\r\n");
      out.write("                        <th scope=\"row\">{{index + 1}}</th>\r\n");
      out.write("                        <td>{{grade.sjTitle}}</td>\r\n");
      out.write("                        <td>{{grade.stuTitle}}</td>\r\n");
      out.write("                        <td>{{grade.grade}}</td>\r\n");
      out.write("                        <td>{{grade.createDate}}</td>\r\n");
      out.write("                     </tr>\r\n");
      out.write("                  </tbody>\r\n");
      out.write("               </table>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- ?????? ?????? -->\r\n");
      out.write("         \r\n");
      out.write("            <div>\r\n");
      out.write("               <table class=\"table table-hover\">\r\n");
      out.write("                  <thead>\r\n");
      out.write("                     <h3>?????? ??????</h3>\r\n");
      out.write("                     <tr>\r\n");
      out.write("                        <th scope=\"col\">??????</th>\r\n");
      out.write("                        <th scope=\"col\">??????</th>\r\n");
      out.write("                        <th scope=\"col\">??????</th>\r\n");
      out.write("                     </tr>\r\n");
      out.write("                  </thead>\r\n");
      out.write("                  <tbody>\r\n");
      out.write("                     <tr v-for=\"(sign, index) in siList\">\r\n");
      out.write("                        <th scope=\"row\">{{index + 1}}</th>\r\n");
      out.write("                        <td>{{sign.createDate}}</td>\r\n");
      out.write("                        <td>{{sign.status}}</td>\r\n");
      out.write("                     </tr>\r\n");
      out.write("                  </tbody>\r\n");
      out.write("               </table>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- ???????????? ?????? -->\r\n");
      out.write("            \r\n");
      out.write("            <div>\r\n");
      out.write("               <table class=\"table table-hover\">\r\n");
      out.write("                  <thead>\r\n");
      out.write("                     <h3>???????????? ??????</h3>\r\n");
      out.write("                     <button data-toggle=\"modal\" data-target=\"#insertCos\"\r\n");
      out.write("                        class=\"glyphicon glyphicon-plus\"></button>\r\n");
      out.write("                     <tr>\r\n");
      out.write("                        <th scope=\"col\">??????</th>\r\n");
      out.write("                        <th scope=\"col\">??????????????????</th>\r\n");
      out.write("                        <th scope=\"col\">????????????</th>\r\n");
      out.write("                        <th scope=\"col\">??????????????????</th>\r\n");
      out.write("                        <th scope=\"col\">??????</th>\r\n");
      out.write("                        <th scope=\"col\">?????? ??????</th>\r\n");
      out.write("                     </tr>\r\n");
      out.write("                  </thead>\r\n");
      out.write("                  <tbody>\r\n");
      out.write("                     <tr v-for=\"(counSeling, index) in cosList\">\r\n");
      out.write("                        <th scope=\"row\">{{index + 1}}</th>\r\n");
      out.write("                        <td @click=\"statusCheck2(counSeling.status,index)\" data-toggle=\"modal\" data-target=\"#cosDetails\">{{counSeling.stuTitle}}</td>\r\n");
      out.write("                        <td @click=\"statusCheck2(counSeling.status,index)\" data-toggle=\"modal\" data-target=\"#cosDetails\">{{counSeling.createDate}}</td>\r\n");
      out.write("                        <td @click=\"statusCheck2(counSeling.status,index)\" data-toggle=\"modal\" data-target=\"#cosDetails\">{{counSeling.requestDate}}</td>\r\n");
      out.write("                        <td @click=\"statusCheck2(counSeling.status,index)\" data-toggle=\"modal\" data-target=\"#cosDetails\">{{counSeling.status}}</td>\r\n");
      out.write("                        <td><button @click=\"statusCheck(counSeling.status),indexCheck(index)\" class=\"glyphicon glyphicon-trash\" data-toggle=\"modal\" data-target=\"#deleteCos\"></button></td>\r\n");
      out.write("                     </tr>\r\n");
      out.write("                  </tbody>\r\n");
      out.write("               </table>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-------------------------------------------------------------- ???????????? -------------------------------------------------------------------->\r\n");
      out.write("            <div class=\"modal fade\" id=\"insertCos\" role=\"dialog\">\r\n");
      out.write("               <div class=\"modal-dialog\">\r\n");
      out.write("\r\n");
      out.write("                  <!-- Modal content-->\r\n");
      out.write("                  <div class=\"modal-content\">\r\n");
      out.write("                     <div class=\"modal-header\">\r\n");
      out.write("                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\r\n");
      out.write("                        <h4 class=\"modal-title\">????????????</h4>\r\n");
      out.write("                     </div>\r\n");
      out.write("                     <div class=\"modal-body\">\r\n");
      out.write("                        <h5>???????????? ??????</h5>\r\n");
      out.write("                        <input style=\"width:513px;\" name=\"insTitle\" placeholder=\"????????? ???????????????.\">\r\n");
      out.write("                        <h5>???????????? ??????</h5>\r\n");
      out.write("                        <textarea rows=\"15\" cols=\"70\" name=\"insContents\" placeholder=\"????????? ???????????????.\"></textarea>\r\n");
      out.write("                        <h5>???????????? ??????</h5>\r\n");
      out.write("                        <input type=\"date\" name=\"requestDate\">\r\n");
      out.write("                     </div>\r\n");
      out.write("                     <div class=\"modal-footer\">\r\n");
      out.write("                        <button type=\"button\" class=\"btn btn-default\"\r\n");
      out.write("                           data-dismiss=\"modal\" @click=\"insertCos()\">??????</button>\r\n");
      out.write("                        <button type=\"button\" class=\"btn btn-default\"\r\n");
      out.write("                           data-dismiss=\"modal\">??????</button>\r\n");
      out.write("                     </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("               </div>\r\n");
      out.write("            </div>\r\n");
      out.write("<!-------------------------------------------------------------- ???????????? ?????? -------------------------------------------------------------------->\r\n");
      out.write("            <div v-if=\"display[1].show\" class=\"modal fade\" id=\"deleteCos\" role=\"dialog\">\r\n");
      out.write("               <div class=\"modal-dialog\">\r\n");
      out.write("\r\n");
      out.write("                  <!-- Modal content-->\r\n");
      out.write("                  <div class=\"modal-content\">\r\n");
      out.write("                     <div class=\"modal-header\">\r\n");
      out.write("                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\r\n");
      out.write("                        <h4 class=\"modal-title\">???????????? ??????</h4>\r\n");
      out.write("                     </div>\r\n");
      out.write("                     <div class=\"modal-body\">\r\n");
      out.write("                        <h5>?????????????????????????</h5>\r\n");
      out.write("                        <div></div>\r\n");
      out.write("                        <h5>???????????? ??????</h5>\r\n");
      out.write("                        <div class=\"text-primary\">{{info.stuTitle}}</div>\r\n");
      out.write("                        <h5>???????????? ??????</h5>\r\n");
      out.write("                        <div class=\"text-primary\">{{info.contents}}</div>\r\n");
      out.write("                        <h5>???????????? ??????</h5>\r\n");
      out.write("                        <div class=\"text-primary\">{{info.requestDate}}</div>                        \r\n");
      out.write("                     </div>\r\n");
      out.write("                     <div class=\"modal-footer\">\r\n");
      out.write("                        <button type=\"button\" class=\"btn btn-default\"\r\n");
      out.write("                           data-dismiss=\"modal\" @click=\"deleteCos()\">??????</button>\r\n");
      out.write("                        <button type=\"button\" class=\"btn btn-default\"\r\n");
      out.write("                           data-dismiss=\"modal\">??????</button>\r\n");
      out.write("                     </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("               </div>\r\n");
      out.write("            </div>\r\n");
      out.write("<!-------------------------------------------------------------- ???????????? ????????? and ?????? -------------------------------------------------------------------->\r\n");
      out.write("            <div>\r\n");
      out.write("            <input type=\"hidden\" name=\"updateTitle\">\r\n");
      out.write("            <input type=\"hidden\" name=\"updateContents\">\r\n");
      out.write("            </div>   \r\n");
      out.write("            <div v-if=\"display[2].show\" class=\"modal fade\" id=\"cosDetails\" role=\"dialog\">\r\n");
      out.write("               <div class=\"modal-dialog\">\r\n");
      out.write("\r\n");
      out.write("                  <!-- Modal content-->\r\n");
      out.write("                  <div class=\"modal-content\">\r\n");
      out.write("                     <div class=\"modal-header\">\r\n");
      out.write("                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\r\n");
      out.write("                        <h4 class=\"modal-title\">????????????</h4>\r\n");
      out.write("                     </div>\r\n");
      out.write("                     <div class=\"modal-body\">\r\n");
      out.write("                        <h5>???????????? ??????</h5>\r\n");
      out.write("                        <input style=\"width:513px;\" name=\"updateTitle\" placeholder=\"????????? ???????????????.\">\r\n");
      out.write("                        \r\n");
      out.write("                        <h5>???????????? ??????</h5>\r\n");
      out.write("                        <textarea rows=\"15\" cols=\"70\" name=\"updateContents\" placeholder=\"????????? ???????????????.\"></textarea>\r\n");
      out.write("                        <h5>???????????? ??????</h5>\r\n");
      out.write("                        <div class=\"text-primary\">{{info.requestDate}}</div>\r\n");
      out.write("                     </div>\r\n");
      out.write("                     <div class=\"modal-footer\">\r\n");
      out.write("                        <button id =\"button1\" type=\"button\" class=\"btn btn-default\"\r\n");
      out.write("                         data-dismiss=\"modal\" @click=\"updateCos(info.requestDate)\">??????</button>\r\n");
      out.write("                        <button type=\"button\" class=\"btn btn-default\"\r\n");
      out.write("                           data-dismiss=\"modal\">??????</button>\r\n");
      out.write("                     </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("               </div>\r\n");
      out.write("            </div>            \r\n");
      out.write("<!---------------------------------------------------------- TASK,ETC ????????? -------------------------------------------------------------------->\r\n");
      out.write("            <div v-if=\"display[3].show\" class=\"modal fade\" id=\"showTaskView\" role=\"dialog\">\r\n");
      out.write("               <div class=\"modal-dialog\">\r\n");
      out.write("\r\n");
      out.write("                  <!-- Modal content-->\r\n");
      out.write("                  <div class=\"modal-content\">\r\n");
      out.write("                     <div class=\"modal-header\">\r\n");
      out.write("                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\r\n");
      out.write("                        <h4 class=\"modal-title\">{{info.ssName}}</h4>\r\n");
      out.write("                     </div>\r\n");
      out.write("                     <div class=\"modal-body\">\r\n");
      out.write("                        <div></div>\r\n");
      out.write("                        <h5>{{info.ssName}}</h5>\r\n");
      out.write("                        <pre class=\"pre-scrollable text-primary text-center\" >{{info.sjTitle}}</pre>\r\n");
      out.write("                        <h5>{{info.ssName}} ??????</h5>\r\n");
      out.write("                        <div>\r\n");
      out.write("                        <pre class=\"pre-scrollable text-primary text-center\" >{{info.startDate}} ~ {{info.endDate}}</pre>\r\n");
      out.write("                        </div>   \r\n");
      out.write("                        <h5>{{info.ssName}} ??????</h5>\r\n");
      out.write("                        <pre class=\"pre-scrollable text-primary text-center\" >{{info.contents}}</pre>\r\n");
      out.write("                        <h5>?????? ??????</h5>\r\n");
      out.write("                        <pre class=\"pre-scrollable text-primary text-center\" >{{info.file}}</pre>\r\n");
      out.write("                                             \r\n");
      out.write("                     </div>\r\n");
      out.write("                     <div class=\"modal-footer\">\r\n");
      out.write("                        <button type=\"button\" class=\"btn btn-default\"\r\n");
      out.write("                           data-dismiss=\"modal\">??????</button>\r\n");
      out.write("                     </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("               </div>\r\n");
      out.write("            </div>\r\n");
      out.write("<!---------------------------------------------------------- QUIZ ????????? -------------------------------------------------------------------->\r\n");
      out.write("            <div v-if=\"display[4].show\" class=\"modal fade\" id=\"showTaskView\" role=\"dialog\">\r\n");
      out.write("               <div class=\"modal-dialog\">\r\n");
      out.write("\r\n");
      out.write("                  <!-- Modal content-->\r\n");
      out.write("                  <div class=\"modal-content\">\r\n");
      out.write("                     <div class=\"modal-header\">\r\n");
      out.write("                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\r\n");
      out.write("                        <h4 class=\"modal-title\">{{info.ssName}}</h4>\r\n");
      out.write("                     </div>\r\n");
      out.write("                     <div class=\"modal-body\">\r\n");
      out.write("                        <div></div>\r\n");
      out.write("                        <h5>{{info.ssName}}</h5>\r\n");
      out.write("                        <pre class=\"pre-scrollable text-primary text-center\" >{{info.sjTitle}}</pre>\r\n");
      out.write("                        <h5>{{info.ssName}} ??????</h5>\r\n");
      out.write("                        <div>\r\n");
      out.write("                        <pre class=\"pre-scrollable text-primary text-center\" >{{info.startDate}} ~ {{info.endDate}}</pre>\r\n");
      out.write("                        </div>   \r\n");
      out.write("                        <h5>{{info.ssName}}</h5>\r\n");
      out.write("                        <pre class=\"pre-scrollable text-primary text-center\" >{{info.contents}}</pre>\r\n");
      out.write("                        <h5>????????? ???</h5>\r\n");
      out.write("                        <pre class=\"pre-scrollable text-primary text-center\" >{{info.file}}</pre>\r\n");
      out.write("                                             \r\n");
      out.write("                     </div>\r\n");
      out.write("                     <div class=\"modal-footer\">\r\n");
      out.write("                        <button type=\"button\" class=\"btn btn-default\"\r\n");
      out.write("                           data-dismiss=\"modal\">??????</button>\r\n");
      out.write("                     </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("               </div>\r\n");
      out.write("            </div>            \r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("         </div>\r\n");
      out.write("      </div>\r\n");
      out.write("   </div>\r\n");
      out.write("   </div>\r\n");
      out.write("   <script type=\"text/javascript\" src=\"resources/vue/vue.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"resources/js/master.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"resources/js/myPage.js\"></script>   \r\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/vue/dist/vue.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("   \r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
