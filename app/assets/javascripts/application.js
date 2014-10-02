// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require tinymce
//= require_tree .

window.onload = initPage;
function initPage() {
	// find the thumbn on the page
	links = document.getElementById("thumbnailPane").getElementsByTagName("img");
	// set the handlerfor each image
	for (var i=0; i<links.length;i++) {
		image = links[i];
		// create the oncick function
		image.onclick = function() {
			// find the full-size image name
			detailURL = 'images/' + this.title + '-detail.jpg';
			document.getElementById("itemDetail").src = detailURL;
			getDetails(this.title);
		}
	}
}
