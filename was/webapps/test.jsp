<%@page import="org.uengine.processmanager.ProcessManagerRemote"%>
<%@page import="org.uengine.processmanager.ProcessManagerFactoryBean"%>
<%

ProcessManagerFactoryBean bean = new ProcessManagerFactoryBean();
ProcessManagerRemote pmr = null;
String url = "";

try {
	
	pmr = bean.getProcessManagerForReadOnly();
	
	String pdId = pmr.getProcessDefinitionIdByAlias("almAprroval");
	
	url = "./processmanager/initiateForm.jsp?processDefinition="+pdId;
	
} catch (Exception e) {
	pmr.cancelChanges();
} finally {
	pmr.applyChanges();
	pmr.remove();
}



%>

<script>
document.location.href='<%=url%>'

</script>