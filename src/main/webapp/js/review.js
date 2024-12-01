const reviewService = (function() {

    function score(cp, cbno, callback) {
        let url= "oneday/list/api";
        url = cp + url;

		if(cbno) {
			url += "/star/" + cbno;
		}
		console.log(url);
		
        $.ajax({
            url,
            data: cbno
        }).done(function(data) {
            console.log(data);
            
            if(callback) callback(data);
        });
    }

    function findReviews(cp, cbno, param, callback) {
        let url = "oneday/view/api";
        url = cp + url + "/cbno/" + cbno;
		
        if(param && param.reno) {
            url += "/reno/" + param.reno;
        }
		
		$.ajax({
			url,
			data: cbno
		}).done(function(data) {
			if(callback) callback(data);
		});
    }

    return {score, findReviews};
})();