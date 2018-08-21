GoogleMap = function(config) {
	this.id = "";
	this.gMap;
	this.lat = 37.558;
	this.lng = 126.985;
	
	var _ZOOM = 12;
	var _DEFAULT_LATLNG = new google.maps.LatLng(this.lat, this.lng);
	var browserSupportFlag =  new Boolean();
	var marker;
	
	if (config) {
		if(config.lat) this.lat = config.lat;
		if(config.lng) this.lng = config.lng;
		if(config.zoom) _ZOOM = config.zoom; 
	}
	
	this.createMap = function() {
		var myOptions = {
	        zoom: _ZOOM,
	        mapTypeId: google.maps.MapTypeId.ROADMAP
	    };
		
		this.gMap = new google.maps.Map(document.getElementById(this.id), myOptions); 
		
		// Try W3C Geolocation (Preferred)
		if(navigator.geolocation) {
			browserSupportFlag = true;
		    navigator.geolocation.getCurrentPosition(function(position) {
		      initialLocation = new google.maps.LatLng(position.coords.latitude,position.coords.longitude);
		      this.gMap.setCenter(initialLocation);
		    }, function() {
		    	this.handleNoGeolocation(browserSupportFlag);
		    });
		  // Try Google Gears Geolocation
		} else if (google.gears) {
			browserSupportFlag = true;
		    var geo = google.gears.factory.create("beta.geolocation");
		    geo.getCurrentPosition(function(position) {
		      initialLocation = new google.maps.LatLng(position.latitude,position.longitude);
		      this.gMap.setCenter(initialLocation);
		    }, function() {
		    	this.handleNoGeoLocation(browserSupportFlag);
		    });
		  // Browser doesn't support Geolocation
		} else {
			browserSupportFlag = false;
		    this.handleNoGeolocation(browserSupportFlag);
		}
		
	}
	
	this.handleNoGeolocation = function(errorFlag) {
	    if (errorFlag == true) {
	        //alert("Geolocation service failed.");
	        //initialLocation = _DEFAULT_LATLNG;
	    } else {
	        //alert("Your browser doesn't support geolocation. We've placed you in Siberia.");
	        //initialLocation = _SEOUL_LATLNG;
	    }
	    
	    this.gMap.setCenter(_DEFAULT_LATLNG);
	}
	
	this.addMark = function(lat, lng){
	    if(typeof marker != 'undefined'){   
	        marker.setMap(null);   
	    }
	       
	    marker = new google.maps.Marker({   
	        map: map,   
	        position: new google.maps.LatLng(lat, lng)   
	    });
	}
	
	this.staticMap = function(size) {
		var wh = "400x400";
		
		if (size) {
			wh = size;
		}
		
		var src = "http://maps.google.com/maps/api/staticmap?"
		+ "center=" +this.gMap.getCenter()
		+ "&zoom=18&size=" + wh + "&sensor=false"
		+ "&markers=color:blue|label:S|" + this.gMap.getCenter();
		
		return src;
	}
};

GoogleMap.prototype = {
	render : function(divId, textId) {
		this.id = divId;
		
		this.createMap();
		
		var map = this.gMap;
		
		// click event
		google.maps.event.addListener(map, "click", function(event) { 
	    	if(typeof marker != "undefined"){
	    	    marker.setMap(null);   
	    	}
	    	
	    	//document.getElementById("m").value = event.latLng.lat();
	    	//document.getElementById("l").value = event.latLng.lng();
	    	$("#"+textId).val(event.latLng.lat() + "," + event.latLng.lng());
	    	
	    	alert($("#"+textId).val());
		    marker = new google.maps.Marker({ 
	    	    position: event.latLng, 
	    	    map: map,
	    	    title: "When you click the marker you can see the address."
	        });
		    
		    attachMessage(marker, event.latLng, map, false);
	    });
	},
	renderView : function(divId) {
		this.id = divId;
		
		this.createMap();
		
		var viewMap = this.gMap;
		
		var viewLatlng = new google.maps.LatLng(this.lat, this.lng);
		
		var viewMarker = new google.maps.Marker({ 
    	    position: viewLatlng, 
    	    map: viewMap,
    	    title: "When you click the marker you can see the address."
        });
		
		attachMessage(viewMarker, viewLatlng, viewMap, true);
	}
};

// 말풍선
function attachMessage(marker, latlng, map, isView) {
	geocoder = new google.maps.Geocoder();
	
	geocoder.geocode({'latLng': latlng}, function(results, status) {
		if (status == google.maps.GeocoderStatus.OK) {
			if (results[0]) {
				var address_nm = results[0].formatted_address;

				var infowindow = new google.maps.InfoWindow({ 
					content: address_nm,
					size: new google.maps.Size(50,50)
				});

				if (isView) {
					infowindow.open(map, marker);
				}
				
				google.maps.event.addListener(marker, 'click', function() {
					infowindow.open(map, marker);
				});
			}
		} else {
			alert("Address import error!"); 
		}
	});
}