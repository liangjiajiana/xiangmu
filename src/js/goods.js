jQuery(function($){
    $('#headed').load("../html/header.html");
    $('#foot').load("../html/foot.html");
    $('.show-pic').gdsZoom({
        position:'right'
    });

    $('.smallList').on('click','img',function(){
        $('.show-pic img').attr({
            src:this.src,
            'data-big':this.dataset.big || this.src
        })
    })
})