/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.46
 * Generated at: 2021-10-03 09:52:41 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;
import java.text.SimpleDateFormat;

public final class attendance_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.Date");
    _jspx_imports_classes.add("java.text.SimpleDateFormat");
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
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
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
      out.write("\r\n");
      out.write("\r\n");

	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일");

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("<title>Attendance</title>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=EUC-KR\">\r\n");
      out.write("</head>\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\r\n");
      out.write("<link href=\"//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\r\n");
      out.write("\r\n");
      out.write("<script src=\"//code.jquery.com/jquery-1.11.1.min.js\"></script>\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\r\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js\"></script>\r\n");
      out.write("<link href='/resources/css/attendance.css' rel='stylesheet' />\r\n");
      out.write("<script type=\"text/javascript\" src=\"resources/js/master.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"resources/js/attendance.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<body onload=\"mbTypeCheck('");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${mbType}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("'); getStuList();\">\r\n");
      out.write("\r\n");
      out.write("	<nav  class=\"navbar navbar-inverse navbar-fixed-top\">\r\n");
      out.write("	<div class=\"container-fluid\" style=\"display: flex;\">\r\n");
      out.write("		<div class=\"navbar-header\">\r\n");
      out.write("			<button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\"\r\n");
      out.write("				data-target=\"#myNavbar\">\r\n");
      out.write("				<span class=\"icon-bar\"></span> <span class=\"icon-bar\"></span> <span\r\n");
      out.write("					class=\"icon-bar\"></span>\r\n");
      out.write("			</button>\r\n");
      out.write("			<a class=\"navbar-brand\" href=\"#\"></a>\r\n");
      out.write("		</div>\r\n");
      out.write("		<div class=\"collapse navbar-collapse\" id=\"myNavbar\">\r\n");
      out.write("			<ul class=\"nav navbar-nav\">\r\n");
      out.write("				<li><a href=\"main\" id=\"test\" style=\"color: white;\"><img\r\n");
      out.write("						src=\"resources/images/eljl_LOGO_final.png\"\r\n");
      out.write("						style=\"height: 30px; width: 100px;\" /></a></li>\r\n");
      out.write("			</ul>\r\n");
      out.write("		</div>\r\n");
      out.write("\r\n");
      out.write("		<div id= \"bannerBox\" style=\"margin: 0 auto;\">\r\n");
      out.write("			<ul class=\"nav navbar-nav\">\r\n");
      out.write("				<li><a style=\"color: white;\" onClick=\"moveStream()\">스트림</a></li>\r\n");
      out.write("					<li><a  style=\"color: white;\" onClick=\"moveClass()\">수업</a></li>\r\n");
      out.write("					<li class=\"teItem\"><a  style=\"color: white;\" onClick=\"moveAttend()\">출석부</a></li>\r\n");
      out.write("					<li class=\"teItem\"><a  style=\"color: white;\" onClick=\"moveStuManage()\">학생관리</a></li>\r\n");
      out.write("					<li class=\"stuItem\"><a  style=\"color: white;\" onClick=\"moveMyPage()\">마이페이지</a></li>\r\n");
      out.write("			</ul>\r\n");
      out.write("		</div>\r\n");
      out.write("		<div id=\"bannerBox2\">\r\n");
      out.write("			<ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("				<li class=\"teItem\"><a onClick=\"moveSetting()\"><span class=\"glyphicon glyphicon-cog\"\r\n");
      out.write("						style=\"color: white;\"></span></a></li>\r\n");
      out.write("				<li><a style=\"color: white;\" onClick=\"logOut('");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${mbId}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("')\"><span\r\n");
      out.write("						class=\"glyphicon glyphicon-log-out\"></span> 로그아웃</a></li>\r\n");
      out.write("			</ul>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("</nav>\r\n");
      out.write("	\r\n");
      out.write("	<input type='hidden' name='mbId' value='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${mbId}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("' />\r\n");
      out.write("	<input type='hidden' name='csCode' value='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${csCode}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("' />\r\n");
      out.write("	<input type='hidden' name='opCode' value='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${opCode}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("' />\r\n");
      out.write("	<input type='hidden' name='opName' value='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${opName}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("' />\r\n");
      out.write("	\r\n");
      out.write("	<div style=\"width: 100%; height: 30px;\"></div>\r\n");
      out.write("	<div class=\"Attendmanage\">\r\n");
      out.write("	\r\n");
      out.write("	<div class=\"button\" onClick=\"todayAttend(), getStuList('");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${mbId}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("' ,'0001' , '0000002')\" >당일 출석 관리</div>\r\n");
      out.write("		\r\n");
      out.write("	<div class=\"button\" onClick=\"allAttend()\">전체 출석 관리</div>\r\n");
      out.write("	\r\n");
      out.write("	\r\n");
      out.write("	</div>\r\n");
      out.write("	<div id = \"changePage\">\r\n");
      out.write("	<div style = \"margin-left: 5px; font-size: 25px;\" >\r\n");
      out.write("	 ");
      out.print( sf.format(nowTime) );
      out.write("\r\n");
      out.write("	 </div>\r\n");
      out.write("	<br>\r\n");
      out.write("	<div class=\"panel panel-info\">\r\n");
      out.write("	\r\n");
      out.write("      <div class=\"panel-heading\">출석 리스트</div>\r\n");
      out.write("      \r\n");
      out.write("      <div class=\"col-xs-12 panel-body\">\r\n");
      out.write("      <div id=\"stuList\" ></div>\r\n");
      out.write("      \r\n");
      out.write("       </div> \r\n");
      out.write("       </div>\r\n");
      out.write("     <br><br>\r\n");
      out.write("     <div class=\"AttendCkeck\">\r\n");
      out.write("		<input type=\"button\" class=\"btn btn-default btn-lg\" value=\"출석체크\" onClick=\"sendAttendCheck()\"  />\r\n");
      out.write("	</div>\r\n");
      out.write("     \r\n");
      out.write("     \r\n");
      out.write("    \r\n");
      out.write("	\r\n");
      out.write("	\r\n");
      out.write("	</div>\r\n");
      out.write("	\r\n");
      out.write("	<div id=\"hiddenBox\">\r\n");
      out.write("	</div>\r\n");
      out.write("	\r\n");
      out.write("	<!-- 수정 모달창 -->\r\n");
      out.write("\r\n");
      out.write(" <div class=\"editModal\">\r\n");
      out.write("  <button type=\"button\" id=\"editModal\" class=\"btn btn-info btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" onClick=\"editAttendList()\">출석 수정</button>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"modal fade\" id=\"myModal\" role=\"dialog\" >\r\n");
      out.write("    <div class=\"modal-dialog\">\r\n");
      out.write("    \r\n");
      out.write("      <div class=\"modal-content\"  style=\" right : 135% \">\r\n");
      out.write("        <div class=\"modal-header\">\r\n");
      out.write("         \r\n");
      out.write("          <h4 class=\"modal-title\">출석 수정</h4>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"modal-body\" >\r\n");
      out.write("          <select name = \"editStuName\" onchange=\"editDate()\">\r\n");
      out.write("          	<option value = \"stu1\">학생이름</option>\r\n");
      out.write("          </select>\r\n");
      out.write("          <br> <br>\r\n");
      out.write("          <select name = \"editDateList\" onchange = \"editStatus()\">\r\n");
      out.write("          	<option value = \"date1\">날짜선택</option>\r\n");
      out.write("           </select>\r\n");
      out.write("           <br><br>\r\n");
      out.write("           <input type = \"button\" class=\"btn btn-warning\" name = \"late\" value=\"지각\" onClick=\"editCheck(this.value)\" />\r\n");
      out.write("           <input type = \"button\" class=\"btn btn-primary\" name = \"early\" value=\"조퇴\" onClick=\"editCheck(this.value)\"/>\r\n");
      out.write("           <input type = \"button\" class=\"btn btn-danger\" name = \"absent\" value=\"결석\" onClick=\"editCheck(this.value)\"/>\r\n");
      out.write("           <input type = \"button\" class=\"btn btn-success\" name = \"success\" value=\"출석\" onClick=\"editCheck(this.value)\"/><br><br>\r\n");
      out.write("        	변경 전 :<div id = \"beforeName\"></div><br>\r\n");
      out.write("            변경 후 : <div id = \"afterName\"></div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"modal-footer\">\r\n");
      out.write("          <button type=\"button\" class=\"btn btn-default\" onClick=\"editAttend()\">수정</button>\r\n");
      out.write("          <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">닫기</button>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      \r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  \r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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
