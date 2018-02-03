jQuery(function($){

    // ------连接头部尾部-----
    $('#header').load('../html/header.html');
    $('#foot').load('../html/foot.html');

    // ------Tab切换-----
    var $itemtab = $('.contentThree-t').find('ul li ');
    var $content = $('.contentThree-b').find('ul');
    $content.slice(1).hide();
     $itemtab.eq(0).addClass('active');

    $('#contentThree').on('mousemove','.contentThree-t ul li ',function(){
       var idx = $(this).index();
        $content.eq(idx).show().siblings().hide();
    })

    // --------轮播图----
})
