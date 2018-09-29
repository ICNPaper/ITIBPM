function setCalender(locale, options){
	if (!locale) {
		locale = "";
	} else if(locale == "en") {
		locale += "-GB";
	}

	$.datepicker.setDefaults($.datepicker.regional[locale]);
	//$(".j_calendar").datepicker($.datepicker.regional['ko']);
	
	$('.j_calendar').datepicker({
        //inline: true,
        showOn: "both", // focus, button, both
        //showAnim: "blind", // blind, clip, drop, explode, fold, puff, slide, scale, size, pulsate, bounce, highlight, shake, transfer
        showOptions: {direction: 'horizontal'},
        duration: 200,
        buttonImageOnly: true,
        buttonText: "calendar",
        buttonImage: "../../images/Icon/btn_calendar.gif",
	    showMonthAfterYear:true,
	    changeYear:true,
	    changeMonth:true,
	    dateFormat: 'yy-mm-dd'
	});
	if (options) {
		$(".j_calendar").datepicker("option", options);
	}
}