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

    return {score};
})();