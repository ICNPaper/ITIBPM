/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.9
 * Generated at: 2018-09-28 10:02:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.common.callback;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.uengine.kernel.*;
import java.io.*;

public final class errorpage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {


//	private static org.apache.log4j.Logger errorLogger = org.apache.log4j.Logger.getLogger("bpm.error");

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("java.io");
    _jspx_imports_packages.add("org.uengine.kernel");
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

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    java.lang.Throwable exception = org.apache.jasper.runtime.JspRuntimeLibrary.getThrowable(request);
    if (exception != null) {
      response.setStatus(javax.servlet.http.HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
    }
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
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
response.setContentType("text/html; charset=UTF-8");
      out.write('\r');
      out.write('\n');

	Throwable orgErr = exception;			// 오류 객체.
	
	int errLevel = UEngineException.ERROR;
	String userMsg = "";

	Throwable finding = orgErr;
	
	while(!(finding instanceof UEngineException) && finding!=null){
		finding = finding.getCause();
	}
	
	if (finding instanceof UEngineException){
		errLevel = ((UEngineException)finding).getErrorLevel();
		orgErr = finding;
	}
	
	String[] errIconForErrorLevels = new String[]{
			"bug.gif",
			"bug.gif",
			"bug.gif",
			"info.gif"
	};
	
	String errIcon = errIconForErrorLevels[errLevel];
	String errTitle = orgErr.getMessage();	// 오류 제목.
	String errDesc = orgErr.toString();		// 오류 설명.

	if (errLevel != 3) {
		if( exception != null && exception instanceof ServletException ){
			if( ((ServletException)exception).getRootCause() != null ){
				orgErr = ((ServletException)exception).getRootCause();
				errTitle = orgErr.getMessage();	// 오류 제목.
				errDesc = orgErr.toString();	// 오류 설명.
			}
		}
		userMsg = "An exception has occurred. Please contact administrator. (ERROR LEVEL : " + errLevel + ")<br />";
	}
	
	exception.printStackTrace();
	//errorLogger.error(errTitle, orgErr);
	// TODO : 관리자에게 메일 보내기.

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>::: ERROR :::</title>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"");
      out.print(GlobalContext.WEB_CONTEXT_ROOT );
      out.write("/scripts/crossBrowser/elementControl.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"");
      out.print(org.uengine.kernel.GlobalContext.WEB_CONTEXT_ROOT );
      out.write("/common/callback/errorpage.js\"></script>\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"");
      out.print(org.uengine.kernel.GlobalContext.WEB_CONTEXT_ROOT );
      out.write("/images/common.css\" type=\"text/css\">\r\n");
      out.write("\t<style type=\"text/css\">\r\n");
      out.write("\tbody {\r\n");
      out.write("\t\tmargin: 0;\r\n");
      out.write("\t\toverflow: auto;\r\n");
      out.write("\t}\r\n");
      out.write("\t</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body bgcolor=\"#F7F7F7\" onload=\"setErrorPage();\">\r\n");
      out.write("<div id=\"divErrorHeader\" style=\"display: none;\">\r\n");
 if (3 == errLevel) { 
      out.write("\r\n");
      out.write("\t<strong>");
      out.print(errTitle);
      out.write("</strong>\r\n");
 } else { 
      out.write("\r\n");
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("    <tr>\r\n");
      out.write("        <td align=\"center\"><table id=\"Table_01\" width=\"563\" height=\"94\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td rowspan=\"5\"><img src=\"");
      out.print(org.uengine.kernel.GlobalContext.WEB_CONTEXT_ROOT );
      out.write("/images/Common/error01_01.jpg\" width=\"100\" height=\"94\" alt=\"\"></td>\r\n");
      out.write("                <td height=\"34\"><img src=\"");
      out.print(org.uengine.kernel.GlobalContext.WEB_CONTEXT_ROOT );
      out.write("/images/Common/errorIMG.gif\" width=\"69\" height=\"18\"\r\n");
      out.write("                /><a href=\"javascript:openPopupLayer();\"><img src=\"");
      out.print(org.uengine.kernel.GlobalContext.WEB_CONTEXT_ROOT );
      out.write("/images/Common/detailinfo.gif\" width=\"69\" height=\"18\"\r\n");
      out.write("                id=\"idBtnDetailinfo\" border=\"0\" /></a></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td height=\"19\" style=\"font-size:12px;\">\r\n");
      out.write("                \t");
      out.print( userMsg );
      out.write("\r\n");
      out.write("                </td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td background=\"");
      out.print(org.uengine.kernel.GlobalContext.WEB_CONTEXT_ROOT );
      out.write("/images/Common/errorlinedot.gif\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td height=\"24\" style=\"color:#5a9aea; font-size:11px;\">\r\n");
      out.write("                \t");
      out.print(errTitle);
      out.write("\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td height=\"16\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("        </table></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("</table>\r\n");
      out.write("</div>\r\n");
      out.write("<div id=\"divOrgBugDescript\" style=\"display: none;\">\r\n");
      out.write("<table width=\"720\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\" align=\"center\">\r\n");
      out.write("    <tr>\r\n");
      out.write("        <td width=\"3\" height=\"3\"><img src=\"");
      out.print(org.uengine.kernel.GlobalContext.WEB_CONTEXT_ROOT );
      out.write("/images/Common/errorMsgBoxMo01.gif\" width=\"4\" height=\"4\"></td>\r\n");
      out.write("        <td background=\"");
      out.print(org.uengine.kernel.GlobalContext.WEB_CONTEXT_ROOT );
      out.write("/images/Common/errorMsgBoxLine01.gif\"></td>\r\n");
      out.write("        <td width=\"3\"><img src=\"");
      out.print(org.uengine.kernel.GlobalContext.WEB_CONTEXT_ROOT );
      out.write("/images/Common/errorMsgBoxMo02.gif\" width=\"4\" height=\"4\"></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr>\r\n");
      out.write("        <td background=\"");
      out.print(org.uengine.kernel.GlobalContext.WEB_CONTEXT_ROOT );
      out.write("/images/Common/errorMsgBoxLine04.gif\"></td>\r\n");
      out.write("        <td align=\"center\" style=\"padding:10px;\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td><table width=\"700\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td width=\"105\" height=\"40\" rowspan=\"2\"><img src=\"");
      out.print(org.uengine.kernel.GlobalContext.WEB_CONTEXT_ROOT );
      out.write("/images/Common/errorIMG02.gif\" width=\"86\" height=\"37\"></td>\r\n");
      out.write("                        <td width=\"448\" height=\"20\" style=\"font-size:12px; color:#5a9aea; font-weight:bold;\">");
      out.print(errTitle);
      out.write("</td>\r\n");
      out.write("                        <td width=\"147\" rowspan=\"2\" align=\"right\">\r\n");
      out.write("                        \t<a href=\"javascript:\" name=\"btnCloseMsg\"><img src=\"");
      out.print(org.uengine.kernel.GlobalContext.WEB_CONTEXT_ROOT );
      out.write("/images/Common/closeMsg.gif\" width=\"69\" height=\"18\" border=\"0\"></a>\r\n");
      out.write("                        </td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td height=\"20\" style=\"font-size:12px;\">\r\n");
      out.write("                        \t");
      out.print(errDesc);
      out.write("\r\n");
      out.write("                    \t</td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                </table></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td height=\"10\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td bgcolor=\"#333333\" height=\"1\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td height=\"10\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>\t\r\n");
      out.write("                \t<div style=\"width:100%; height:400px; font-size:11px;\">\r\n");
      out.write("                     \t<textarea name=\"stackTrace\" style=\"width:100%; height:400px;\">\r\n");

	StringWriter sw = new StringWriter();
	PrintWriter pw = new PrintWriter(sw);
	orgErr.printStackTrace(pw);
	out.print(sw);

	orgErr.printStackTrace();
	
	sw.close();
	pw.close();

      out.write("\r\n");
      out.write("\t\t\t\t\t    </textarea>\r\n");
      out.write("                \t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("        </table></td>\r\n");
      out.write("        <td background=\"");
      out.print(org.uengine.kernel.GlobalContext.WEB_CONTEXT_ROOT );
      out.write("/images/Common/errorMsgBoxLine02.gif\"></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr>\r\n");
      out.write("        <td height=\"3\"><img src=\"");
      out.print(org.uengine.kernel.GlobalContext.WEB_CONTEXT_ROOT );
      out.write("/images/Common/errorMsgBoxMo04.gif\" width=\"4\" height=\"4\"></td>\r\n");
      out.write("        <td background=\"");
      out.print(org.uengine.kernel.GlobalContext.WEB_CONTEXT_ROOT );
      out.write("/images/Common/errorMsgBoxLine03.gif\"></td>\r\n");
      out.write("        <td><img src=\"");
      out.print(org.uengine.kernel.GlobalContext.WEB_CONTEXT_ROOT );
      out.write("/images/Common/errorMsgBoxMo03.gif\" width=\"4\" height=\"4\"></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("</table>\r\n");
 } 
      out.write("\r\n");
      out.write("</div>\r\n");
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
