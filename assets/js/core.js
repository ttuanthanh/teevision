var apps={
	ini: function(){		
	},
	product:{	
	},
	state: function(e, value){
		if (typeof value == 'undefined') value = 0;
		var country_id	= e.value;
		jQuery.ajax({				
			url: baseURL + "ajax/state/"+country_id+"/"+value,				
		}).done(function( data ) {
			jQuery('#field-state').html(data);
		});
	},
	checkout: function(){
		var fr = jQuery('#cartCheckout');
		var check = true;
		fr.find('.required').each(function(){
			if ( jQuery(this).val() == '')
			{
				jQuery(this).css('border-color', '#ff0000');
				check = false;
			}
			else
			{
				jQuery(this).css('border-color', '#CCC');
			}			
		});
		
		if (check == false)
		{
			alert('Please add shipping info.');
			return false;
		}
		
		fr.submit();
	},
	shipping: function(id){
		if (typeof id == 'undefined')
		{
			jQuery('.choose-shipping').each(function(){
				if (jQuery(this).is(':checked') == true)
					id = jQuery(this).val();
			});
		}
		if (id > 0)
		{
			jQuery('.cart_info').css('opacity', '0.3');				
			jQuery.ajax({					
				url: baseURL + "cart/shipping/"+id
			}).done(function( data ){
				jQuery('.cart_info table').html(data);
				jQuery('.cart_info').css('opacity', '1');
				jQuery('.text-success').click(function(event){
					event.preventDefault();
					jQuery(this).parents('.cart-more').find('.cart-more-display').toggle();
				});
			});
		}			
	},
	discount: function(e){
		var value = jQuery('#coupon_code').val();
		if (value == '')
		{
			alert('Please add coupon.');
			return false;
		}
		if (typeof e != 'undefined')
			var $btn = jQuery(e).button('loading');
			
		jQuery('.cart_info').css('opacity', '0.3');
		jQuery.ajax({					
			url: baseURL + "cart/coupon/"+value
		}).done(function( data ){
			
			if (typeof $btn != 'undefined')
				$btn.button('reset');
				
			jQuery('.cart_info table').html(data);
			jQuery('.cart_info').css('opacity', '1');
			
			jQuery('.text-success').click(function(event){
				event.preventDefault();
				jQuery(this).parents('.cart-more').find('.cart-more-display').toggle();
			});
		});
	},
	removeCart: function(id, e){		
		jQuery(e).parents('tr').remove();
		jQuery.ajax({			
			url: baseURL + "cart/remove/"+id					
		}).done(function( data ){
			location.reload();
		})
	},
}
jQuery(function() {
	apps.ini();
        var _element = {"old": null};
        jQuery("a.color-hover-change").click(function (){ 
            
            var url = jQuery(this).attr('data-url-image'), element_load = jQuery(this).attr('data-element-load'), index = jQuery(this).attr('data-index');
            jQuery(".product_color_active").val(jQuery(this).attr('data-index'));
            jQuery("#is-color").val(jQuery(this).attr('data-iscolor'));
            jQuery("#product-colors a").removeClass('active');
            jQuery(this).addClass('active');
            
            if(_element.old == null) {
            	jQuery(element_load).css({'min-height': jQuery(element_load).outerHeight()});
            	_element.old = jQuery(element_load).html();
            } 
            
                
            if(url && element_load) {
            	if(typeof _element['color_'+index] === 'undefined') {
            	 	jQuery.ajax({'url':url, beforeSend: function( xhr ) {
                            jQuery(element_load).html('<img src="/assets/images/ajax-loader.gif"/>');
                            }}).done(function(data){ 
                                _element['color_'+index] = data; 
                                jQuery(element_load).html(data);
                                jQuery(".main-image img").elevateZoom();
                            });
            	} else {
            		jQuery(element_load).html(_element['color_'+index]);
            	}
            	
            }
        
        }) ;
        
        jQuery(".btn-quote").click(function (){ 
            
            var product_id  = jQuery('#product_id').val(),
                color       = jQuery('#is-color').val(),
                attr_key    = jQuery('#attr-key').val(),
                print = {},
                attribute   = {};
            
            i = 0;
            size_flag = 0;
            $('input[name^="'+attr_key+'"]').each(function() {
                size_flag += Number($(this).val());
                attribute[i++] =$(this).val(); 
                
            });
            if (size_flag < 12) {
                alert('Please select size and quantity! Minimum order is 12 pieces');
                return false;
            }
            print[0]    = jQuery('#print-front-num').val() , 
            print[1]    = jQuery('#print-back-num').val()
            
            //attribute = attribute.slice(0,-1) + ']';
            //attribute   += ']';
            if (color == "") {
                alert('Please select color!');
                return false
            };
            
            var url = '/ajax/getQuote';
            jQuery.ajax({   url:url, 
                            type: 'POST', 
                            data: { product_id: product_id, color: color, size: attribute, print: print},
                            beforeSend: function( xhr ) {
                                //jQuery(element_load).html('<img src="/assets/images/ajax-loader.gif"/>');
                            }}).done(function(data){ 
                                return_price = jQuery.parseJSON(data);
                                jQuery('#price-detail').show();
                                jQuery('.btn-order').css('display','inline-block');
                                jQuery('.btn-quote').html('UPDATE QUOTE');
                                jQuery('.btn-quote').addClass('margin-right20');
                                jQuery('#unit-price-value').html("$"+return_price.unit_price);
                                jQuery('#total-price-value').html("$"+return_price.total_price);
                                jQuery('#f-price').val(return_price.unit_price+','+return_price.total_price+','+return_price.unit_price_full);
                            });
            
        });
        
        jQuery(".btn-order").click(function (){  
            var color       = jQuery('#colors').val(),
                attr_size   = getAttributeArray(jQuery('#attr-key').val());
                
            //Add color to submit
            var input = $("<input>").attr({"type":"hidden", "name": "color"}).val(color);
            $('#submit-quote').append($(input));
            
            //Add list size to submit
            $.each(attr_size, function(i, v){
                var size = $("<input>").attr({"type":"hidden","name":"sizes[]"}).val(v);
                $('#submit-quote').append(size);    
            });
            
            //Add list print location to submit
            var print_f = $("<input>").attr({"type":"hidden", "name": "print-front"}).val(jQuery('#print-front-num').val());
            var print_b = $("<input>").attr({"type":"hidden", "name": "print-back"}).val(jQuery('#print-back-num').val());
            $('#submit-quote').append(print_f, print_b); 
            
            //Submit from to after quote page
            $('#submit-quote').submit();
        });
        
});

function getAttributeArray(key) {
    var attribute = {},
        i = 0;    
    $('input[name^="'+key+'"]').each(function() {
        attribute[i++] =$(this).val(); 
    });
    return attribute;
}
