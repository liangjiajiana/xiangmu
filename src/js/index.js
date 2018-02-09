require(['config'],function(){
    require(['jquery','carousel'],function($){
        jQuery(function($){
      // ------连接头部尾部-----
          $('#header').load('../html/header.html');
          $('#foot').load('../html/foot.html');

            // ------Tab切换1-----
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

            // ---------获取数据库的数据---------
          $.ajax({
              url:'../api/index.php',
              success:function(data){

                var res = JSON.parse(data);
                
                $whiteWinelist = $('.whiteWinelist');

                $whiteWinelist.html(res.map(function(item){
                      if(item.category == '白酒'){
                         return `<li id ="${item.id}">
                                 <img src="${item.imgs}">
                                  <p>${item.name}<p>
                                  <p class="price" style="color:red;">￥${item.price}<p>
                            </li>`
                      }
                }));

                $redWinelist = $('.redWinelist');
                $redWinelist.html(res.map(function(item){
                      if(item.category == '葡萄酒'){
                         return `<li id="${item.id}">
                                 <img src="${item.imgs}">
                                  <p>${item.name}<p>
                                  <p class="price" style="color:red;">￥${item.price}<p>
                            </li>`
                      }
                }));

                $foreignWinelist = $('.foreignWinelist');
                $foreignWinelist.html(res.map(function(item){
                      if(item.category == '洋酒'){
                         return `<li id="${item.id}">
                                 <img src="${item.imgs}">
                                  <p>${item.name}<p>
                                  <p class="price" style="color:red;">￥${item.price}<p>
                            </li>`
                      }
                }));

                $healthWinelist = $('.healthWinelist');
                $healthWinelist.html(res.map(function(item){
                      if(item.category == '葡萄酒'){
                         return `<li id="${item.id}">
                                 <img src="${item.imgs}">
                                  <p>${item.name}<p>
                                  <p class="price" style="color:red;">￥${item.price}<p>
                            </li>`
                      }
                }));

                // ------生成食物-------
                $foodlist = $('.foodlist');
                $foodlist.html(res.map(function(item){
                      if(item.category == '食物'){
                         return `<li id="${item.id}">
                                 <img src="${item.imgs}">
                                  <p>${item.name}<p>
                                  <p class="price" style="color:red;">￥${item.price}<p>
                            </li>`
                      }
                }));

                $recommend = $('.recommend');
                $recommend.html(res.map(function(item){
                    if(item.category == '小酒'){
                      return `<li>
                             <img src="${item.imgs}">
                              <p>${item.name}<p>
                              <p class="price" style="color:red;">￥${item.price}<p>
                      </li>`
                    }
                }))


                $bTen = $('.bTen');
                $bTen.html(res.map(function(item){
                  console.log(item);
                    if(item.category == '热销'){
                      return `<li>
                             <img src="${item.imgs}">
                              <p>${item.name}<p>
                      </li>`
                    }
                }))

                $grape = $('.grape');
                $grape.html(res.map(function(item){
                    if(item.category == '小葡萄'){
                      return `<li>
                             <img src="${item.imgs}">
                      </li>`
                    }
                }))   
              }
          })
        })
    })
});
