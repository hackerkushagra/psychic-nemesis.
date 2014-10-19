// JavaScript Document
var _rys = jQuery.noConflict();
		_rys("document").ready(function(){
		
			_rys(window).scroll(function () {
				if (_rys(this).scrollTop() > 39) {
					_rys('.nav-container').addClass("f-nav") && _rys('.footer').addClass("f-footer");
				} else {
					_rys('.nav-container').removeClass("f-nav")  && _rys('.footer').removeClass("f-footer");
				}
			});

		});