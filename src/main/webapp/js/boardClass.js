const boardClassService = (function() {

    function sortCbno(cp, cri, param, callback) {
		let url = "oneday/list/api"
		// 억덕계 호출할려고 cri를 보내는거지
		// 쟤는 원래 그 querystring으로 처리가 맞지요?
		// 옥꼐이
		url = cp + url;
		
		if(cri) {
			// 흠 얘를 어쩐다	
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