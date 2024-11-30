const reviewService = (function() {

    function score(cp, param, callback) {
        let url= "oneday/list/api";
        url = cp + url;

        $.ajax({
            url,
            data: score
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

        $.getJSON(url).done(function(data) {
            if(callback) callback(data);
        });
    }

    return {score, findReviews};
})();