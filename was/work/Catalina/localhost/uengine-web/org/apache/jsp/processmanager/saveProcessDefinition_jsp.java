/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.9
 * Generated at: 2017-02-01 10:47:10 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.processmanager;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.rmi.PortableRemoteObject;
import org.uengine.kernel.*;
import org.uengine.processmanager.*;
import org.uengine.persistence.processdefinition.*;
import org.uengine.persistence.processdefinitionversion.*;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.rmi.PortableRemoteObject;
import org.uengine.kernel.*;
import org.uengine.processmanager.*;
import java.io.*;
import org.uengine.util.UEngineUtil;

public final class saveProcessDefinition_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {


	public String decode(String source) throws Exception{
			if(source==null)
				return null;
			return new String(source.getBytes("8859_1"), "UTF-8");
	}


  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/processmanager/../common/callback/afterSaveProcessDefinition.jsp", Long.valueOf(1333525514000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("org.uengine.persistence.processdefinitionversion");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("java.io");
    _jspx_imports_packages.add("org.uengine.kernel");
    _jspx_imports_packages.add("org.uengine.processmanager");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_packages.add("org.uengine.persistence.processdefinition");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("javax.naming.InitialContext");
    _jspx_imports_classes.add("javax.naming.Context");
    _jspx_imports_classes.add("javax.naming.NamingException");
    _jspx_imports_classes.add("org.uengine.util.UEngineUtil");
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
      response.setContentType("text/xml; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      org.uengine.processmanager.ProcessManagerFactoryBean processManagerFactory = null;
      synchronized (application) {
        processManagerFactory = (org.uengine.processmanager.ProcessManagerFactoryBean) _jspx_page_context.getAttribute("processManagerFactory", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
        if (processManagerFactory == null){
          processManagerFactory = new org.uengine.processmanager.ProcessManagerFactoryBean();
          _jspx_page_context.setAttribute("processManagerFactory", processManagerFactory, javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
        }
      }


	ProcessManagerRemote pm = processManagerFactory.getProcessManager();

	response.setContentType("text/xml; charset=UTF-8");
	response.setHeader("Cache-Control","no-cache"); //HTTP 1.1
	response.setHeader("Pragma","no-cache"); //HTTP 1.0
	response.setDateHeader ("Expires", 0); //prevents caching at the proxy server

	try{
		String definition 		= decode(request.getParameter("definition"));
		String version 			= decode(request.getParameter("version"));
		String definitionName 	= decode(request.getParameter("definitionName"));
		String savingFolder		= decode(request.getParameter("folderId"));
		String description 		= decode(request.getParameter("description"));
		String alias 			= decode(request.getParameter("alias"));
		String author 			= decode(request.getParameter("author"));
		boolean autoProduction = "true".equals(request.getParameter("autoProduction"));
		String belongingDefinitionId
							= request.getParameter("defId");
		String objType 			= decode(request.getParameter("objType"));
							
							
		//ProcessDefinition sampleProc = new ProcessDefinition();
		//sampleProc.setName("xxxxx");
		
	    //definition = GlobalContext.serialize(sampleProc, String.class);
		
	
		String defVerId = pm.addProcessDefinition(definitionName, Integer.parseInt(version), description, false, definition, savingFolder, belongingDefinitionId, alias, objType);
		
		if(autoProduction)
			pm.setProcessDefinitionProductionVersion(defVerId);
		
		pm.applyChanges();



	TransactionContext st = new SimpleTransactionContext();

	try{
		ProcessDefinitionDAOType pddt = ProcessDefinitionDAOType.getInstance(st);
	
		if(UEngineUtil.isNotEmpty(belongingDefinitionId)){
			ProcessDefinitionVersionDAO versionDAO = pddt.getAllVersions(Long.parseLong(belongingDefinitionId));
			String formTemplatePathRoot=pageContext.getServletContext().getRealPath("html/uengine-web/forms/");
			
			File lastFormTemplate = null;
			while(versionDAO.next()){
				Number versionId = versionDAO.getDefVerId();
				
				File dir = new File(formTemplatePathRoot + "/" + versionId);
				
				if(dir.exists()){
					lastFormTemplate = dir;
					break;
				}
			}
			
			if(lastFormTemplate!=null){
				File newDir = new File(formTemplatePathRoot + "/" + defVerId.split("@")[0]);
		
				if(!newDir.exists() && !newDir.mkdir()) throw new UEngineException("couldn't create a directory for creating new form template: " + newDir.getAbsolutePath());
				
				File[] dirForTracingTags = lastFormTemplate.listFiles();
				for(int i=0; i<dirForTracingTags.length; i++){
					File dirForTracingTag = dirForTracingTags[i];
					
					if(!dirForTracingTag.isDirectory()) continue;
					
					File newDirForTracingTag = 	new File(newDir, dirForTracingTag.getName());
					if(!newDirForTracingTag.exists()){
						if(!newDirForTracingTag.mkdir()) throw new UEngineException("couldn't create a directory for creating new form template: " + newDirForTracingTag.getAbsolutePath());
					
						File[] files = dirForTracingTag.listFiles();
						for(int j=0; j<files.length; j++){
							File theFile = files[j];
							File newFile = new File(newDirForTracingTag, theFile.getName());
							
							InputStream inputStream = new FileInputStream(theFile);
							UEngineUtil.copyStream(inputStream, new FileOutputStream(newFile));
						}
					}
				}
			}
		}
		
	}catch(Exception e){
		throw e;
	}finally{
		st.releaseResources();
	}
	

      out.write('O');
      out.write('K');
      out.write('@');
      out.print(defVerId);

	}catch(Exception e){
		e.printStackTrace();
		if(pm!=null)
			pm.cancelChanges();

      out.print(e.getMessage());

	}finally{
		pm.remove();
	}

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
