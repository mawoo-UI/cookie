const boardClassService = (function() {
    const url = "/cookie/oneday/list/api"

    function sortCbno(cri, cbno, viewCount, callback) {
        console.log(cbno);

        if(cri && cbno) {
			url += "/cbno/" + cbno;
		}
		if(cri && viewCount) {
			url += "/vc/" + viewCount;
		}
        $.getJSON(url).done(function(data) {
            if(callback) callback(data);
        });
    }
    
    return {sortCbno};
})();