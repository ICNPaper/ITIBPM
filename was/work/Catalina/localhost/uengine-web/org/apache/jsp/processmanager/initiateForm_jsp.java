/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.9
 * Generated at: 2017-02-01 10:11:35 UTC
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

public final class initiateForm_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes.add("org.uengine.kernel.GlobalContext");
    _jspx_imports_classes.add("com.defaultcompany.login.LoginService");
    _jspx_imports_classes.add("org.uengine.ui.list.util.HttpUtils");
    _jspx_imports_classes.add("org.uengine.security.AclManager");
    _jspx_imports_classes.add("javax.naming.Context");
    _jspx_imports_classes.add("javax.naming.NamingException");
    _jspx_imports_classes.add("org.uengine.util.UEngineUtil");
    _jspx_imports_classes.add("javax.rmi.PortableRemoteObject");
    _jspx_imports_classes.add("org.uengine.ui.list.datamodel.DataMap");
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
      org.uengine.processmanager.ProcessManagerFactoryBean processManagerFactory = null;
      synchronized (application) {
        processManagerFactory = (org.uengine.processmanager.ProcessManagerFactoryBean) _jspx_page_context.getAttribute("processManagerFactory", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
        if (processManagerFactory == null){
          processManagerFactory = new org.uengine.processmanager.ProcessManagerFactoryBean();
          _jspx_page_context.setAttribute("processManagerFactory", processManagerFactory, javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
        }
      }
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\t\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");

	String strategyId = request.getParameter("strategyId");

	ProcessManagerRemote pm = processManagerFactory.getProcessManager();

	String processDefinition = decode(request.getParameter("processDefinition"));
	String procDefId = decode(request.getParameter("procDefId"));
	String procDefAlias = decode(request.getParameter("alias"));
	
	if(org.uengine.util.UEngineUtil.isNotEmpty(procDefId)){
		processDefinition = pm.getProcessDefinitionProductionVersion(procDefId);
	}
	if(org.uengine.util.UEngineUtil.isNotEmpty(procDefAlias)){
		processDefinition = pm.getProcessDefinitionProductionVersionByAlias(procDefAlias);
	}

	ProcessDefinition pd = null;
	ActivityReference initiatorHumanActivityReference;

	InitialContext context = new InitialContext();
	UserTransaction tx = (GlobalContext.useManagedTransaction ? (UserTransaction)context.lookup(GlobalContext.USERTRANSACTION_JNDI_NAME) : null);

	String currentTracTag = null;
	String currentTaskId = null;
	
	try{
		if(tx!=null) tx.begin();

		pd = pm.getProcessDefinition(processDefinition);
		initiatorHumanActivityReference = pm.getInitiatorHumanActivityReference(processDefinition);
			
		if(initiatorHumanActivityReference!=null && pd.isInitiateByFirstWorkitem()){
																   
			String initiatorHumanActivityTracingTag = initiatorHumanActivityReference.getAbsoluteTracingTag();
			HumanActivity initiatorHumanActivity = (HumanActivity)initiatorHumanActivityReference.getActivity();
			String tool = initiatorHumanActivity.getTool();
			
			String instId="";
			boolean isCompleteed=false;
			if(initiatorHumanActivity.isNotificationWorkitem()){
				Map genericContext = new HashMap();
				genericContext.put(HumanActivity.GENERICCONTEXT_CURR_LOGGED_ROLEMAPPING, loggedRoleMapping);
					
				pm.setGenericContext(genericContext);
				instId = pm.initializeProcess(processDefinition);
				pm.executeProcess(instId);

				ActivityInstanceContext  aic = pm.getProcessInstance(instId).getCurrentRunningActivity();

				if(aic !=null){
					Activity act = aic.getActivity();
					currentTracTag = act.getTracingTag();
					
					if (act instanceof TelnetNormalActivity) {
					   tool = ((TelnetNormalActivity)act).getTool();
					   currentTaskId = ((TelnetNormalActivity)act).getTaskIds(pm.getProcessInstance(instId))[0];
				    } else if (act instanceof HumanActivity) {
					   tool = ((HumanActivity)act).getTool();
					   currentTaskId = ((HumanActivity)act).getTaskIds(pm.getProcessInstance(instId))[0];
					}
				}else{
					isCompleteed=true;
				}
			}
						
			if(!isCompleteed){
					String url = "../wih/" + tool + "/index.jsp";
			
					Map parameterMap = initiatorHumanActivity.getParameterMap();

      out.write("\r\n");
      out.write("\r\n");
      out.write("<form name=\"notificationWorkitemAction\" action=\"");
      out.print(request.getContextPath() );
      out.write("/processparticipant/worklist/workitemHandler.jsp\" method=\"post\">\r\n");
      out.write("\t<input type=\"hidden\" name=\"taskId\" value=\"");
      out.print(currentTaskId );
      out.write("\">\r\n");
      out.write("\t<input type=\"hidden\" name=\"tracingTag\" value=\"");
      out.print(currentTracTag );
      out.write("\">\r\n");
      out.write("\t<input type=\"hidden\" name=\"instanceId\" value=\"");
      out.print(instId );
      out.write("\">\r\n");
      out.write("\t<input type=\"hidden\" name=\"isViewMode\" value=\"false\">\r\n");
      out.write("\t<input type=\"hidden\" name=\"strategyId\" value=\"");
      out.print(strategyId );
      out.write("\">\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("<form name=\"defaultAction\" action=\"");
      out.print(url);
      out.write("\" method=\"POST\">\r\n");
			
					for(Iterator iter = parameterMap.keySet().iterator(); iter.hasNext();) {
						String key = (String)iter.next();
						String value = ""+parameterMap.get(key);
						value=value.replace('\"','\'');
						//System.out.println("1key:"+key+",value:"+value);
							
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<input type=hidden name=\"");
      out.print(key);
      out.write("\" value=\"");
      out.print(value);
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t\t");

					}
					Enumeration enumeration = request.getParameterNames();
					HashMap valueMap = new HashMap();
		 
					for(;enumeration.hasMoreElements();){
						String key = (String)enumeration.nextElement();
						String value = request.getParameter(key);
						//System.out.println("2key:"+key+",value:"+value);
		   
							
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<input type=hidden name=\"");
      out.print(key);
      out.write("\" value=\"");
      out.print(value);
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t\t");

					}

					if(!"".equals(instId)){

      out.write("\r\n");
      out.write("\t\t\t\t\t\t<input type=hidden value='");
      out.print(instId);
      out.write("' name=instanceId>\r\n");

					}

      out.write("\r\n");
      out.write("\t\t\t\t\t<input type=hidden value='");
      out.print(processDefinition);
      out.write("' name='processDefinition'>\r\n");
      out.write("\t\t\t\t\t<input type=hidden value='");
      out.print(initiatorHumanActivityTracingTag);
      out.write("' name='tracingTag'>\r\n");
      out.write("\t\t\t\t\t<input type=hidden value='");
      out.print(initiatorHumanActivityTracingTag);
      out.write("' name='initiatorHumanActivityTracingTag'>\r\n");
      out.write("\t\t\t\t\t<input type=hidden value='yes' name='initiate'>\r\n");
      out.write("\t\t\t\t\t<input type=\"hidden\" name=\"strategyId\" value=\"");
      out.print(strategyId );
      out.write("\" />\r\n");
      out.write("</form>\r\n");

			}else{

      out.write("\r\n");
      out.write("\r\n");
      out.write("Process completed with instance id [");
      out.print(instId);
      out.write("]\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\tsetInterval(\"parent.close()\", 2000);\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");

			}
			pm.applyChanges();			
		}else{
			String instId = pm.initializeProcess(processDefinition);
			//pm.executeProcess(instId);
			pm.applyChanges();
			
			
      out.write("Process has been intialized with instance id [");
      out.print(instId);
      out.write(']');

		}
		
		if(tx!=null && tx.getStatus() != Status.STATUS_NO_TRANSACTION )
			tx.commit();
		
	}catch(Exception e){
		try{
			pm.cancelChanges();
		}catch(Exception ex){
		}
		
		if(tx!=null && tx.getStatus() != Status.STATUS_NO_TRANSACTION )
			tx.rollback();

		throw e;
	}finally{
		try{
			pm.remove();
		}catch(Exception ex){
		}
	}

      out.write("\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");

	if (currentTaskId != null) {
		out.print("document.notificationWorkitemAction.submit();");
	} else {
		out.print("document.defaultAction.submit();");
	}

      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</body>");
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
