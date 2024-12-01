const boardClassService = (function() {

    function sortCbno(cp, cri, param, callback) {
		let url = "oneday/list/api"
		url = cp + url;
		
		if(cri) {
			// 흠 얘를 어쩐다	
			if(cri.keyword) {
				
			}
		}
        if(param && param.cbno) { 
			url += "/cbno/" + param.cbno;
		}
		if(param && param.viewCount) {
			url += "/vc/" + param.viewCount;
		}

		$.ajax({
			url,
			data : cri
		}).done(function(data) {
            if(callback) callback(data);
        });
		
    }
    
    return {sortCbno};
})();