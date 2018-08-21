<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="lib/jquery/importJquery.jsp"%>
<script type="text/javascript" src="http://code.google.com/apis/gears/gears_init.js"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script type='text/javascript' src='lib/google/googlemap.js'></script>
<title>google map</title>
<script type="text/javascript">
$(document).ready(function() {
	gmap = new GoogleMap();
    gmap.render("map+canvas", "m");
    
    //var latlng = new google.maps.LatLng(-34.397, 150.644);
    //var myOptions = {
    //  zoom: 8,
    //  center: latlng,
    //  mapTypeId: google.maps.MapTypeId.ROADMAP
    //};
    //var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
});
</script>
</head>
<body>
lat(위도) : <input type="text" id="m" />
lng(경도) : <input type="text" id="l" />
<div id="map+canvas" style="width:50%; height:50%"></div>
<br/>
<br/>
<div id="map+view" style="width:50%; height:50%"></div>
<br/>
<img src="http://maps.google.com/maps/api/staticmap?center=40.714728,-73.998672&zoom=18&size=400x400&sensor=false&markers=color:blue|label:S|40.714728,-73.998672">

<br/>
end
</body>
</html>