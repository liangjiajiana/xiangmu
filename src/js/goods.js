require(['config'],function(){
    require(['jquery','zoom'],function($){
        jQuery(function($){

            // ----------连接首尾----------
            $('#headed').load("../html/header.html");
            $('#foot').load("../html/foot.html");

             // --------放大镜-----
            $('.show-pic').gdsZoom({
                position:'right'
            });
            $('.smallList').on('click','img',function(){
                // console.log(this);
                $('.show-pic img').attr({
                    src:this.src,
                    'data-big':this.dataset.big || this.src
                })
            })
                // -------接受数据--------
                var goodsName = document.getElementById('goodsName');
                var mz = document.getElementById('mz');
                
                var price = document.querySelector('.price');
                var photo = document.querySelector('.photo');
                var photo1 = document.querySelector('.photo1');
                var photo2 = document.querySelector('.photo2');
                var photo3 = document.querySelector('.photo3');
                var zengjia = document.querySelector('.zengjia');
                var jianshao = document.querySelector('.jianshao');
                var num = document.querySelector('.num');
                var Scart = document.querySelector('.Scart');
                var buy = document.querySelector('.U-buy');
                var close = document.querySelector('.close');
            
                var params = location.search;

                params = params.slice(1);

                params = params.split('&');

                var data = {};

                params.forEach(function(item){
                    var arr = item.split('=');
                    data[arr[0]] = decodeURI(arr[1]);
                })
                goodsName.innerHTML = data.name;
                mz.innerHTML = data.name;
                price.innerHTML = data.price;

                photo.src = data.imgs;
                // photo1.src = data.imgs;
                // photo2.src = data.imgs;
                // photo3.src = data.imgs;

                // ------------获取商品--------
                var goodslist = [];

                var cookie = document.cookie;
                cookies = cookie.split('; ');
                    cookies.forEach(function(item){
                        var arr = item.split('=');
                        if(arr[0] === 'goodslist'){
                            goodslist = JSON.parse(arr[1]);
                        }
                    })
            // --------封装cookie-------
            function gender(){
                var goods = {
                    id:data['id'],
                    imgurl:data['imgs'],
                    price:data['price'],
                    name:data['name'],
                    qty:1
                }
                var id = goods.id;
                    for(var i=0;i<goodslist.length;i++){
                        if(goodslist[i].id === id){
                             break;
                        }
                    }
                    if(i===goodslist.length){
                        var goods = {
                            id:data['id'],
                            imgurl:data['imgs'],
                            price:data['price'],
                            name:data['name'],
                            qty:1
                        }
                         goodslist.push(goods);
                    }else{
                        goodslist[i].qty++;
                    }
                    document.cookie = 'goodslist=' + JSON.stringify(goodslist);
            }
            // ---------加入购物车--------
            Scart.onclick = function(){
                buy.style.display = 'block';
                gender();
            }

            // -----------关闭弹窗---------
            close.onclick = function(){
                buy.style.display = 'none';   
            }
            // ------------增加---------
            zengjia.onclick = function(){
                var _num = num.innerText*1;
                    _num+=1;
                    num.innerText = _num;
                    gender();
                    
            }
            jianshao.onclick = function(){
                var _num = num.innerText*1;
                    _num-=1;
                    if(_num<=1){
                        _num=1;
                    }
                num.innerText = _num;  
            }
        })
    })
});
