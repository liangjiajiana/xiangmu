jQuery(function($){

    // ------连接头部尾部-----
    $('#header').load('../html/header.html');
    $('#foot').load('../html/foot.html');

    // ------Tab切换-----
    var $itemtab = $('.contentThree-t').find('ul li ');
    var $content = $('.contentThree-b').find('ul');
    // $content.slice(1).hide();

    $('#contentThree').on('mousemove','.contentThree-t ul li ',function(){
       var idx = $(this).index();
        $content.eq(idx).show().siblings().hide();
    })

    // --------轮播图1-------
   $('#carousel').lxCarousel({
       imgs:["../img/lunbotu8.jpg","../img/lunbotu3.jpg","../img/lunbotu7.jpg","../img/lunbotu5.jpg","../img/lunbotu4.jpg","../img/lunbotu10.jpg"],
       width:1400,
       height:470,
       page:false
   })
   // ---------轮播图2-------
   $(".Indexright-c").lxCarousel({
      imgs:["../img/lun2.jpg","../img/lun2.jpg","../img/lun3.jpg"],
       width:271,
       height:160,
       type:'vertical',
       // page:false
   })
   // ---------轮播图3-------
   $(".Indexright-b").lxCarousel({
      imgs:["../img/lun2.jpg","../img/lun3.jpg","../img/lun1.jpg"],
       width:271,
       height:160,
       type:'vertical',
       // page:false
   })
 // ---------轮播图4-------
   $(".whiteWine-blt").lxCarousel({
      imgs:["../img/l1 (1).jpg","../img/l1 (2).jpg","../img/l1 (4).jpg"],
       width:210,
       height:487,
       type:'vertical',
   })
   // ---------轮播图5-------
   $(".redWine-blt").lxCarousel({
      imgs:["../img/l1 (4).jpg","../img/l1 (2).jpg","../img/l1 (1).jpg"],
       width:210,
       height:487,
       type:'vertical',
   })
 // ---------轮播图6-------
    $(".foreignWine-blt").lxCarousel({
      imgs:["../img/l1 (1).jpg","../img/l1 (2).jpg","../img/l1 (4).jpg"],
       width:210,
       height:487,
       type:'vertical',
   })
    // ---------轮播图7-------
    $(".healthWine-blt").lxCarousel({
      imgs:["../img/l1 (3).jpg","../img/l1 (2).jpg","../img/l1 (4).jpg"],
       width:210,
       height:487,
       type:'vertical',
   })
     // ---------轮播图8-------
    $(".food-blt").lxCarousel({
      imgs:["../img/l1 (1).jpg","../img/l1 (2).jpg","../img/l1 (4).jpg"],
       width:210,
       height:487,
       type:'vertical',
   })  

   // 
   // -------Tab切换2-------
   // var $itemtab2 = $('.IndexNav').find('ul li');
   var $content2 = $('.Indexlist').find('ul');

   $('.IndexTabbox').on('mousemove','.IndexNav ul li',function(){
        var idx = $(this).index();
        $content2.eq(idx).show().siblings().hide(); 
   })
})
