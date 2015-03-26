$(function(){
				$("#newsSection").accordion({ header: "h4" });
				setInterval("rotateImages()", 2000);
		});
		
		function rotateImages(){
		var oCurPhoto = $('#photoShow div.current')
		var oNxtPhoto = oCurPhoto.next();
		if(oNxtPhoto.length == 0)
			oNxtPhoto = $('#photoShow div:first');	
		
		oCurPhoto.removeClass('current').addClass('previous');
		oNxtPhoto.css({ opacity: 0.0}).addClass('current').animate({ opacity:1.0}, 1000,
		function(){
			oCurPhoto.removeClass('previous');
		});
		
		}