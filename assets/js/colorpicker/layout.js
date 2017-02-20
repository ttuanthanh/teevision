(function($){
	var initLayout = function() {
		jQuery('.colorSelector').ColorPicker({
			color: '#0000ff',
			onShow: function (colpkr) {
				$(colpkr).fadeIn(500);
				return false;
			},
			onHide: function (colpkr) {
				$(colpkr).fadeOut(500);
				return false;
			},
			onChange: function (hsb, hex, rgb) {
				$('.colorSelector').css('backgroundColor', '#' + hex);
				$('.colorSelector').data('color', hex);
			}
		})
		jQuery('.colorSelector').bind("mouseenter", function(){
			jQuery(this).ColorPickerShow();
		})
	};
	EYE.register(initLayout, 'init');
})(jQuery)