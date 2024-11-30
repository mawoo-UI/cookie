const boardClassService = (function() {

    function sortCbno(cp, cri, param, callback) {
		let url = "oneday/list/api"
		url = cp + url;
		
		if(cri) {
			// 흠 얘를 어쩐다	
			if(cri.keyword) {
				
			}
		}
		console.log(param);
        if(param && param.cbno) { 
			url += "/cbno/" + param.cbno;
		}
		if(param && param.viewCount) {
			url += "/vc/" + param.viewCount;
		}
		console.log(url)
		$.ajax({
			url,
			data : cri
		}).done(function(data) {
			//console.log(data);
            if(callback) callback(data);
        });
		
    }
    
    return {sortCbno};
})();