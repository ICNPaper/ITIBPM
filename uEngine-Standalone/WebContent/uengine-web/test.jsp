<%@page import="org.uengine.kernel.ProcessDefinition"%>
<%@page import="org.uengine.processmanager.ProcessManagerRemote"%>
<%@page import="org.uengine.processmanager.ProcessManagerFactoryBean"%>
<%

ProcessManagerFactoryBean bean = new ProcessManagerFactoryBean();
ProcessManagerRemote pmr = null;
String url = "";

try {
	
	pmr = bean.getProcessManagerForReadOnly();
	
	String verId = pmr.getProcessDefinitionIdByAlias("almAprroval");
	
	ProcessDefinition def = pmr.getProcessDefinition(verId);
	String pdId = def.getId();
	
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