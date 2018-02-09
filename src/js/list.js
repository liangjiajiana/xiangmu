require(['config'],function(){
    require(['jquery'],function($){
        jQuery(function($){
            $('#headed').load("../html/header.html");
            $('#foot').load("../html/foot.html");


            // -------分页设置-----
            var $pageNo = 1;  
            var $qty = 23;
             // ----------封装-----
            function information(a){
                var $goodslist =  $('.goodslist');

                $goodslist.html(a.data.map(function(item){
                    return `<li id="${item.id}">
                            <img src="${item.imgs}"/>
                            <p class="price">${item.price}</p>
                            <p class="name">${item.name}</p>
                            <p style="padding-left:35px;"><img src="../img/list66.png"/></p>
                            <p style="padding-left:35px;"><img src="../img/list77.png"/></p>
                        </li>`
                }))
            }
            // --------生成数据------
            $.ajax({
                url:'../api/list.php',
                data:{pageNO:$pageNo,qty:$qty},
                dataType:'json',
                success:function(data){
                    let res = data;
                    information(res);
                    // --------生成页码---------
                    var  page = document.querySelector('.page');
                    var pageqty = Math.ceil(res.total/res.qty);
                    for(var i =1;i<pageqty;i++){
                        var span = document.createElement('span');
                        span.innerText = i;
                      
                        if(i===1){
                            span.className ='active';
                        }
                            page.appendChild(span);
                    }

                    // -----------传参--------
                    chuancan();
                    function chuancan(){
                        res.data.map(function(item){
                            var goods = document.getElementById(item['id']);
                            // var aa = goods.parentNode;
                            goods.onclick = function(){
                                var params = '?';
                                    for(var attr in item){
                                        params+= attr + '=' + item[attr] + '&';
                                    }
                                    params = params.slice(0,-1);

                                    params = encodeURI(params);

                                    location.href = '../html/goods.html' + params;
                            }
                        })
                    }
                }
            })
            // ---------点击页码跳转----
            $('.page').on('click','span',function(){
                    $ym = $(this).text()*1;
                    $pageNo = $ym; 
                    $(this).siblings().removeClass('active');
                    $(this).addClass('active');
                $.ajax({
                    url:'../api/list.php',
                    data:{pageNo:$pageNo,qty:$qty},
                    dataType:'json',
                    success:function(data){
                        var res = data;
                        information(res);
                        res.data.map(function(item){
                            var goods = document.getElementById(item['id']);
                            goods.onclick = function(){
                                var params = '?';
                                    for(var attr in item){
                                        params+= attr + '=' + item[attr] + '&';
                                    }

                                    params = params.slice(0,-1);

                                    params = encodeURI(params);

                                    location.href = '../html/goods.html' + params;
                            }
                        })
                    }
                })
            })

            //   $('.datalist').on('click','img',function(){
            //     let id = $(this).parent('li').attr('id');
            //     location.href = '../html/goods.html' + '?=' +id
            // })
        })
    })
});