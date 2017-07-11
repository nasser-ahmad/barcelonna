$('#player_avatar').bind('change', function(){
	size_in_kilobytes = this.files[0].size/1024/1024/1024;
	if(size_in_kilobytes > 100) {
		alert('Maximum file size is 100KB');
	}
});