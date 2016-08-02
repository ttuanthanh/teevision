
    function add_comment(){
        var url = '/admin/comment/add_new';
        var order_id = jQuery('#order_id_cm').val();
        var comment_text = jQuery('#comment-text').val();
        if(comment_text == '')
        {
            alert('Please enter comment message!');
            return false;
        }
        jQuery.ajax({   
                url:url, 
                type: 'POST', 
                data: { order_id: order_id, comment_text: comment_text},
                async: false,
                beforeSend: function( xhr ) {
                    //jQuery(element_load).html('<img src="/assets/images/ajax-loader.gif"/>');
                }}).done(function(data){ 
                   jQuery('#comment-container').prepend(data);
                   jQuery('#comment-text').val('');
                   //jQuery("#comment-container").scrollTop($("#comment-container")[0].scrollHeight);
                   jQuery("#comment-content").animate({ scrollTop: $('#comment-content').prop("scrollHeight")}, 1000);
                });
    }