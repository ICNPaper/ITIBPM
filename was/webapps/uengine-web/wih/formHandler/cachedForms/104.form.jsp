<%
    String DEFINITION_ROOT = "./uengine/definition/enquete/";

    InputStream is = new FileInputStream(DEFINITION_ROOT + "test.dat");
    
    HashMap valueMap = (HashMap)GlobalContext.deserialize(is, HashMap.class);
    
    StringBuffer sb = new StringBuffer();
    
    for (int i=1; i <= 10; i++) {
        if (valueMap.containsKey(String.valueOf(i))) {
            sb.append("[\"").append(valueMap.get(String.valueOf(i) + "-name")).append("\",").append(valueMap.get(String.valueOf(i))).append("],");
        }
    }
    
    if (sb.length() > 0) {
        sb.setLength(sb.length()-1);
    }
    
    System.out.println(sb.toString());
%><script type="text/javascript" src="https://www.google.com/jsapi"></script><script type="text/javascript">
$(document).ready(function() {
    //Load the Visualization API and the piechart package.
    google.load('visualization', '1.0', {'packages':['corechart']});
    
    // Set a callback to run when the Google Visualization API is loaded.
    google.setOnLoadCallback(drawChart);
    
    // Callback that creates and populates a data table, 
    // instantiates the pie chart, passes in the data and
    // draws it.
    function drawChart() {
        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Slices');
        data.addRows([
          <%=sb.toString()%>
        ]);
        
        // Set chart options
        var options = {'title':'Enquete Pie Chart',
                       'width':800,
                       'height':600};
        
        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
    }
});
</script>
<div id="chart_div">
	&nbsp;</div>
