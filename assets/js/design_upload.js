jQuery(function () {
	var filesUpload = document.getElementById("files-upload"),
		dropArea 	= document.getElementById("drop-area"),
		fileList 	= document.getElementById("dag-files-images"),
		fileType 	= ["png", "gif", "jpg", "jpeg", "ai", "psd", "pdf", "svg", "eps"],
		maxsize		= uploadSize['max'];
		minsize		= uploadSize['min'];
	function uploadFile (file) {
		var ext = file.name.substr(file.name.lastIndexOf('.') + 1);
		var check = fileType.indexOf(ext);//alert(file.type);		
		if(check == -1)
		{
			alert(lang.upload.fileType1 +maxsize+lang.upload.fileType2);
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
								jQuery(".selected-image").attr("src", media.msg.thumb);
							}
							else
							{
								alert(media.msg);
							}
							jQuery('#upload-copyright').attr('checked', false);
							//jQuery('#remove-bg').attr('checked', false);
							jQuery('#files-upload').val('');
							jQuery('.selected-image-upload').hide();
							jQuery('.browse-file').show();
							jQuery('.selected-image-upload').attr("src", "");
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
		
		jQuery('a[href="#uploaded-art"]').tab('show');
		
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
						img.setAttribute('src', media.msg.thumb);
						span.item = media.msg;
						jQuery("#dag-files-images").find(".view-thumb").removeClass("selected");
						jQuery("#action-upload").hide();
						jQuery("#add-upload").show();
						span.className += " selected";
						jQuery(".selected-image").attr("src", media.msg.thumb);
					}
				}
				jQuery('#upload-copyright').attr('checked', false);
				//jQuery('#remove-bg').attr('checked', false);
				jQuery('#files-upload').val('');
				jQuery('.selected-image-upload').hide();
				jQuery('.browse-file').show();
				jQuery('.selected-image-upload').attr("src", "");

				design.myart.create(jQuery("#dag-files-images .view-thumb.selected")[0]);


			};
			
			var formData = new FormData();  
			formData.append('myfile', file); 
			xhr.send(formData);
		}
		fileList.appendChild(span);
	}
	
	function traverseFiles (files) {
		if (typeof files !== "undefined") {
			for (var i=0, l=files.length; i<l; i++) {
				uploadFile(files[i]);
			}
		}
		else {
			jQuery("#upload-support").html("No support for the File API in this web browser");
		}	
	}
	
	document.getElementById('action-upload').addEventListener("click", function () {
		var check = design.upload.computer();
		if (check == true) traverseFiles(filesUpload.files);
	}, false);
	
        function upload_f(){
                traverseFiles(filesUpload.files);
        }
	document.getElementById('add-upload').addEventListener("click", function () {
		var span = jQuery("#dag-files-images").find(".view-thumb.selected");
			design.myart.create(span[0]);
	});

	dropArea.addEventListener("dragleave", function (evt) {
		var target = evt.target;
		
		if (target && target === dropArea) {
			this.className = "";
		}
		evt.preventDefault();
		evt.stopPropagation();
	}, false);
	
	dropArea.addEventListener("dragenter", function (evt) {
		this.className = "over";
		evt.preventDefault();
		evt.stopPropagation();
	}, false);
	
	dropArea.addEventListener("dragover", function (evt) {
		evt.preventDefault();
		evt.stopPropagation();
	}, false);
	
	dropArea.addEventListener("drop", function (evt) {
		traverseFiles(evt.dataTransfer.files);
		this.className = "";
		evt.preventDefault();
		evt.stopPropagation();
	}, false);
	jQuery('.browse-file').click(function(){
		jQuery('#files-upload').trigger("click");
	})
	jQuery('#files-upload').change(function(evt){
		var f = evt.target.files[0];

		var r = new FileReader();
		r.onload = function (e) {
			jQuery('.selected-image-upload').attr("src", e.target.result);
			jQuery('.browse-file').hide();
			jQuery('.selected-image-upload').show();
		};
		r.readAsDataURL(f);
	});
	jQuery("#dag-files-images").on("click" ,".view-thumb img" ,function (e) {
		jQuery("#dag-files-images").find(".view-thumb").removeClass("selected");
		e.target.parentElement.className += " selected";
		jQuery('.selected-image').attr("src", e.target.src);
	});
	jQuery("#tab-upload-conputer").on("click", function(e){
		jQuery("#action-upload").show();
		jQuery("#add-upload").hide();
	})
	jQuery("#tab-uploaded-art").on("click", function(e){
		jQuery("#action-upload").hide();
		jQuery("#add-upload").show();
	})
});