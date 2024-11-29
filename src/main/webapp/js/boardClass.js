const boardClassService = (function() {
    const url = "/cookie/oneday/list"

    function listShow(cri, callback) {
        // console.log(cbno);

        if(cri && cri.lastCbno) {
			url += "/" + cri.lastCbno;
		}
        $.getJSON(url).done(function(data) {
            if(callback) callback(data);
        });
    }
    
    return {listShow};
})();