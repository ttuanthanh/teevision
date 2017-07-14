    
    
    jQuery(function() {
        
        jQuery("#btn-checkout").click(function (){
            var attr_key    = jQuery('#attr-key').val(),
                attribute   = {};
            i = 0;
            size_flag = 0;
            $('input[name^="'+attr_key+'"]').each(function() {
                size_flag += Number($(this).val());            
            });
            $("#quantity").val(size_flag);
            
            
            
        });
    });
    $('#bt-mymodal').click(function() {
            var decs_front = $('#design-area-front').val(),
                decs_back = $('#design-area-back').val();
            
            if(decs_front == '' && decs_back == ''){
                //$('#myModal').modal('hide');
                alert('Please enter your Describe Design Idea!')
                return false;
            }
                
    });
    function send_artist(){
            
            if(!validateEmail(jQuery('#u-email').val()) && jQuery('#u-email').val() == '') {
                
                alert('Please enter your name and email');
                return false;
            }
            $('#btn-sendemail').hide();
            $('#ajax-load').show();
            size_flag = 0;
            $('input[name^="'+jQuery('#attr-key').val()+'"]').each(function() {
                size_flag += Number($(this).val());            
            });
            $("#quantity").val(size_flag);            
            var form = $('#check-out'),
                attr_size   = getAttributeArray(jQuery('#attr-key').val());
        
            //Add list size to submit
            var size
            $.each(attr_size, function(i, v){
                size = $("<input>").attr({"type":"hidden","name":"sizes[]"}).val(v);
                form.append(size);    
            });
            
            $.ajax( {
                type: "POST",
                url: '/ajax/sendEmailArtist',
                data: form.serialize(),
                success: function( response ) {
                    $('#ajax-load').hide();
                    if(response == 1){                        
                        $('#send-success').show();
                    }
                    else {
                        alert('An error occurred. Please try again!')
                        $('#btn-sendemail').show();
                    }
                },
                error: function (request, status, error) {
                    alert(request.responseText);
                }
            });
    }
    function validateEmail(sEmail) {
        var filter = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
        if (filter.test(sEmail)) 
            return true;
        return false;
    }
    function getAttributeArray(key) {
        var attribute = {},
            i = 0;    
        $('input[name^="'+key+'"]').each(function() {
            attribute[i++] =$(this).val(); 
        });
        return attribute;
    }
    
    var filefront = document.getElementById("files-upload-front"),
            fileback = document.getElementById("files-upload-back"),
            //dropArea 	= document.getElementById("drop-area"),
            //fileList 	= document.getElementById("dag-files-images"),
            fileType 	= ["png", "gif", "jpg", "jpeg", "PNG", "JPG", "JPEG"],
            maxsize		= uploadSize['max'];
            minsize		= uploadSize['min'];
    function uploadFile (file, locat) {
            var ext = file.name.substr(file.name.lastIndexOf('.') + 1);
            var check = fileType.indexOf(ext);//alert(file.type);		
            if(check == -1)
            {
                    alert(lang.upload.fileType);
                    return false;
            }
            if(file.size > 1048576 * maxsize){	//1048576 = 1MB
                    alert(lang.upload.maxSize + maxsize+'MB)');
                    return false;
            }

            if(file.size < 1048576 * minsize){
                    alert(lang.upload.minSize + minsize+'MB)');
                    return false;
            }
            var span = document.createElement("span"),			
                    img,
                    progressBarContainer = document.createElement("div"),
                    progressBar = document.createElement("div"),
                    reader,
                    xhr,
                    fileInfo;
            span.className = 'view-thumb col-xs-4 col-md-4';

            if (jQuery('#remove-bg').is(':checked') == true) var remove = 1;
            else var remove = 0;
            var url = baseURL + 'ajax/upload/'+remove;

            /*
                    If the file is an image and the web browser supports FileReader,
                    present a preview in the file list
            */				
            if (typeof window.FileReader !== "undefined" && (file.type == 'image/png' || file.type == 'image/jpg' || file.type == 'image/jpeg' || file.type == 'image/gif')) {
                    img = document.createElement("img");
                            img.className = 'img-responsive img-thumbnail';				
                    span.appendChild(img);
                    reader = new FileReader();
                    reader.onload = (function (theImg) {
                            return function (evt) {
                                    theImg.src = evt.target.result;
                                    if (/MSIE/.test(navigator.userAgent))
                                    {
                                            jQuery(progressBar).html('uploading...').css('width', '100%');
                                            jQuery.ajax({
                                                    type: "POST",
                                                    url:  baseURL + 'ajax/uploadIE',
                                                    data: { myfile: evt.target.result}
                                            }).done(function( content ) {							
                                                    var media 	= eval('('+content+')');
                                                    if (media.status == '')
                                                    {
                                                            img.setAttribute('src', media.msg.thumb);
                                                            span.item = media.msg;
                                                            jQuery(span).bind('click', function(){
                                                                    design.myart.create(span);
                                                            });
                                                            jQuery(progressBarContainer).addClass('uploaded');
                                                            jQuery(progressBar).html('Uploaded').css('width', '100%');
                                                    }
                                                    else
                                                    {
                                                            alert(media.msg);
                                                    }
                                                    // jQuery('#upload-copyright').attr('checked', false);
                                                    jQuery('#remove-bg').attr('checked', false);
                                                    jQuery('#files-upload').val('');
                                            });
                                    }
                            };
                    }(img));
                    reader.readAsDataURL(file);
            }
            else
            {
                    img = document.createElement("img");
                    img.className = 'img-responsive img-thumbnail';
                    img.setAttribute('src', baseURL + 'assets/images/photo.png');
                    span.appendChild(img);
            }

            jQuery('#upload-tabs a[href="#uploaded-art"]').tab('show');

            progressBarContainer.className = "progress progress-bar-container";
            progressBar.className = "progress-bar";
            progressBarContainer.appendChild(progressBar);
            span.appendChild(progressBarContainer);

            // Uploading - for Firefox, Google Chrome and Safari
            xhr = new XMLHttpRequest();

            // Update progress bar
            xhr.upload.addEventListener("progress", function (evt) {
                    if (evt.lengthComputable) {
                            var completed = (evt.loaded / evt.total) * 100;
                            progressBar.style.width = completed + '%';
                            progressBar.innerHTML = completed.toFixed(0) + '%';
                    }
                    else {
                            // No data to calculate on
                    }
            }, false);


            // File uploaded
            xhr.addEventListener("load", function () {
                    progressBarContainer.className += " uploaded";
                    progressBar.innerHTML = "Uploaded!";			
            }, false);		

            if (/MSIE/.test(navigator.userAgent) == false)
            {
                    xhr.open("post", url, true);

                    xhr.onload = function() {
                            if (xhr.status === 200) {
                                    var media 					= eval('('+this.responseText+')');
                                    if (media.status == '')
                                    {                                            
                                            $('#design-image-'+locat).val(media.msg.url_short);                                            
                                            /*
                                            img.setAttribute('src', media.msg.thumb);
                                            span.item = media.msg;
                                            jQuery(span).bind('click', function(){
                                                    design.myart.create(span);
                                            });
                                            */
                                    }
                            }
                            // jQuery('#upload-copyright').attr('checked', false);
                            jQuery('#remove-bg').attr('checked', false);
                            jQuery('#files-upload').val('');
                    };

                    var formData = new FormData();  
                    formData.append('myfile', file); 
                    xhr.send(formData);
            }
            fileList.appendChild(span);
    }

    function traverseFiles (files, locat) {
            if (typeof files !== "undefined") {
                    for (var i=0, l=files.length; i<l; i++) {
                            uploadFile(files[i], locat);
                    }
            }
            else {
                    fileList.innerHTML = "No support for the File API in this web browser";
            }	
    }

    function upload_f(locat){
        if(locat == 'front')
            traverseFiles(filefront.files, locat);
        else
            traverseFiles(fileback.files, locat);
    }
        