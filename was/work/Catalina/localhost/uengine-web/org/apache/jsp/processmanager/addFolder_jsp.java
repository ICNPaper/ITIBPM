/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.9
 * Generated at: 2017-02-02 01:44:51 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.processmanager;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.net.*;
import java.util.*;
import javax.naming.InitialContext;
import javax.transaction.*;
import javax.rmi.PortableRemoteObject;
import javax.naming.Context;
import javax.naming.NamingException;
import org.metaworks.*;
import org.metaworks.web.*;
import org.metaworks.inputter.*;
import org.uengine.ui.list.util.HttpUtils;
import org.uengine.ui.list.datamodel.DataMap;
import org.uengine.util.UEngineUtil;
import org.uengine.processmanager.*;
import org.uengine.kernel.*;
import org.uengine.webservices.worklist.*;
import org.uengine.webservice.*;
import org.uengine.security.AclManager;
import org.uengine.contexts.*;
import org.uengine.kernel.GlobalContext;
import com.defaultcompany.login.LoginService;
import java.sql.Connection;
import java.sql.PreparedStatement;
import org.uengine.util.dao.DefaultConnectionFactory;

public final class addFolder_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {


	public String decode(String source) throws Exception{
		//if(source==null)
		//	return null;
		
		return source; //new String(source.getBytes("8859_1"), "UTF-8");
	}
	
	public Object notNull(Object value) throws Exception{
		if(value!=null) return value;
		else return "-";
	}
/*
	public String replaceAmp(String src){
		if(src!=null)
			return src.replaceAll("&", "&amp;");
		else
			return null;
	}
*/

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/processmanager/../common/headerMethods.jsp", Long.valueOf(1437465138000L));
    _jspx_dependants.put("/processmanager/../common/header.jsp", Long.valueOf(1333525536000L));
    _jspx_dependants.put("/processmanager/../common/getLoggedUser.jsp", Long.valueOf(1437465138000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("org.uengine.webservice");
    _jspx_imports_packages.add("org.metaworks");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.net");
    _jspx_imports_packages.add("java.io");
    _jspx_imports_packages.add("org.metaworks.web");
    _jspx_imports_packages.add("org.uengine.webservices.worklist");
    _jspx_imports_packages.add("org.metaworks.inputter");
    _jspx_imports_packages.add("javax.transaction");
    _jspx_imports_packages.add("org.uengine.processmanager");
    _jspx_imports_packages.add("org.uengine.kernel");
    _jspx_imports_packages.add("org.uengine.contexts");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("javax.naming.InitialContext");
    _jspx_imports_classes.add("java.sql.Connection");
    _jspx_imports_classes.add("org.uengine.util.dao.DefaultConnectionFactory");
    _jspx_imports_classes.add("org.uengine.ui.list.util.HttpUtils");
    _jspx_imports_classes.add("org.uengine.security.AclManager");
    _jspx_imports_classes.add("javax.naming.NamingException");
    _jspx_imports_classes.add("org.uengine.util.UEngineUtil");
    _jspx_imports_classes.add("java.sql.PreparedStatement");
    _jspx_imports_classes.add("org.uengine.ui.list.datamodel.DataMap");
    _jspx_imports_classes.add("org.uengine.kernel.GlobalContext");
    _jspx_imports_classes.add("com.defaultcompany.login.LoginService");
    _jspx_imports_classes.add("javax.naming.Context");
    _jspx_imports_classes.add("javax.rmi.PortableRemoteObject");
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

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
 
	request.setCharacterEncoding("UTF-8");
    response.setHeader("Cache-Control", "no-cache");

	DataMap reqMap = HttpUtils.getDataMap(request, false);

      out.write('\r');
      out.write('\n');
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");

boolean isRegUser = Boolean.parseBoolean(request.getParameter("regUser"));
boolean logged = (session.getAttribute("loggedUserId")!=null)?true:false;   
boolean isCookieLoggin = false;

if(!logged && Boolean.parseBoolean(GlobalContext.getPropertyString("web.cookie.use","false"))){
	LoginService loginService = new LoginService();
	String authenticationCondition = loginService.loginForCookie(request);
	if("Success".equals(authenticationCondition)){
		isCookieLoggin=true;
	}
}

//System.out.println("-----------------------------------------------------");
//System.out.println("getLoggedUser.jsp - logged : "+logged);
//System.out.println("getLoggedUser.jsp - isCookieLoggin : "+isCookieLoggin);
//System.out.println("-----------------------------------------------------");

if (isRegUser) {
	session.setAttribute("loggedUserId", "guest");
} else if (logged == false && isCookieLoggin == false ) {

      out.write("\r\n");
      out.write("<html><meta http-equiv=\"refresh\" content=\"0; url=");
      out.print(org.uengine.kernel.GlobalContext.WEB_CONTEXT_ROOT);
      out.write("/loginForm.jsp\"></meta></html>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\twindow.top.location.href = \"");
      out.print(org.uengine.kernel.GlobalContext.WEB_CONTEXT_ROOT);
      out.write("/loginForm.jsp\";\r\n");
      out.write("</script>\r\n");

	return;
}
	String  loggedUserId       		= (String) session.getAttribute("loggedUserId");
	String  loggedUserFullName 		= (String) session.getAttribute("loggedUserFullName");
	String  loggedUserJikName  		= (String) session.getAttribute("loggedUserJikName");
	String  loggedUserEmail    		= (String) session.getAttribute("loggedUserEmail");
	String  loggedUserPartCode 		= (String) session.getAttribute("loggedUserPartCode");
	String  loggedUserPartName 		= (String) session.getAttribute("loggedUserPartName");
	String  loggedUserMsnId 		= (String) session.getAttribute("loggedUserMsnId");
	String  loggedUserNateonId 		= (String) session.getAttribute("loggedUserNateonId");
	String  loggedUserLocale 		= (String) session.getAttribute("loggedUserLocale");
	String  loggedUserGlobalCom		= (String) session.getAttribute("loggedUserGlobalCom");
	String  loggedUserComName 		= (String) session.getAttribute("loggedUserComName");
	boolean loggedUserIsAdmin  		= "1".equals((String) session.getAttribute("loggedUserIsAdmin"));
	boolean loggedUserIsMaster 		= loggedUserIsAdmin && !org.uengine.util.UEngineUtil.isNotEmpty(loggedUserGlobalCom);
	
	String loggedUserTimeZone		= null;

	org.uengine.kernel.RoleMapping loggedRoleMapping = null;
	String rmClsName = "";
	
	loggedRoleMapping = org.uengine.kernel.RoleMapping.create();
	loggedRoleMapping.setEndpoint(loggedUserId);
	loggedRoleMapping.setResourceName(loggedUserFullName);
	loggedRoleMapping.setEmailAddress(loggedUserEmail);
	loggedRoleMapping.setMale(true);
	loggedRoleMapping.setBirthday(new java.util.Date());
	loggedRoleMapping.setGroupId(loggedUserPartCode);
	loggedRoleMapping.setCompanyId(loggedUserGlobalCom);
	loggedRoleMapping.setLocale(loggedUserLocale);
	loggedRoleMapping.setTitle(loggedUserJikName);
	
	rmClsName = org.uengine.kernel.RoleMapping.USE_CLASS.getName();

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<LINK href=\"../style/uengine.css\" type=text/css rel=stylesheet>\r\n");
      out.write("\r\n");
      org.uengine.processmanager.ProcessManagerFactoryBean processManagerFactory = null;
      synchronized (application) {
        processManagerFactory = (org.uengine.processmanager.ProcessManagerFactoryBean) _jspx_page_context.getAttribute("processManagerFactory", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
        if (processManagerFactory == null){
          processManagerFactory = new org.uengine.processmanager.ProcessManagerFactoryBean();
          _jspx_page_context.setAttribute("processManagerFactory", processManagerFactory, javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
        }
      }
      out.write("\r\n");
      out.write("\r\n");

	ProcessManagerRemote pm = processManagerFactory.getProcessManager();
	InitialContext context = new InitialContext();
	
	String fn = request.getParameter("folderName");
	String parent = request.getParameter("parentFolder");
	//System.out.println("fn :"+fn);
	//System.out.println("parent :"+parent);
	UserTransaction tx = (GlobalContext.useManagedTransaction ? (UserTransaction)context.lookup(GlobalContext.USERTRANSACTION_JNDI_NAME) : null);

	try {
		if (tx != null) tx.begin();
	
		String defID = pm.addFolder(fn, parent);
		pm.applyChanges();
		
		if (tx != null && tx.getStatus() != Status.STATUS_NO_TRANSACTION )
			tx.commit();
		
		
		AclManager acl = AclManager.getInstance();
		acl.setPermission(Integer.parseInt(defID), acl.ACL_FIELD_EMP, loggedUserId, new String[]{AclManager.PERMISSION_MANAGEMENT + ""}); 
		acl.setPermission(Integer.parseInt(defID), acl.ACL_FIELD_COM, loggedUserGlobalCom, new String[]{AclManager.PERMISSION_VIEW + ""});
		
	
		String sql = "UPDATE bpm_procdef SET comcode = ? WHERE defid = ? ";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try 
		{
			conn = DefaultConnectionFactory.create().getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, loggedUserGlobalCom);
			pstmt.setLong(2, new Long(defID));
			
			pstmt.execute();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			if (pstmt != null) try { pstmt.close(); } catch (Exception e) { }
			if (conn != null) try { conn.close(); } catch (Exception e) { }
		}
	

      out.write("\r\n");
      out.write("Folder '");
      out.print(fn);
      out.write("' has been successfully created.\r\n");
      out.write("<p>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("window.top.location.href = \"index.jsp\";\r\n");
      out.write("</script> \r\n");

	} catch(Exception e) {
		e.printStackTrace();
	
		if (tx != null && tx.getStatus() != Status.STATUS_NO_TRANSACTION )
			tx.rollback();
		throw e;
	}


      out.write('\r');
      out.write('\n');
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
