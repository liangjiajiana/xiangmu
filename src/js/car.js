require(['config'],function(){
     require(['jquery'],function($){
        jQuery(function($){
            // -----------连接尾部-------
            $('#foot').load("../html/foot.html");

            var carlist = document.querySelector('.carlist');
            var total = document.querySelector('.total');
            var jia = document.querySelector('.jia');
            // ----------接收cookie-----
            var goodslist = [];
            var cookie = document.cookie;

            cookies = cookie.split('; ');

            cookies.forEach(function(item){
                var arr = item.split('=');

                if(arr[0] === 'goodslist'){
                    goodslist = JSON.parse(arr[1])
                }
            })

            // ---------封装---------
            gender();
            function gender(){
                var totalPrice = 0;
                carlist.innerHTML = goodslist.map(function(item){
                    totalPrice+= item.price*1 * item.qty*1;
                    console.log(totalPrice);
                    return `<li data-guid="${item.id}">
                            <input type="checkbox" class="Choice"/>
                            <div class="goods-Info"><img src="${item.imgurl}" style="width: 100px;"/><span class="name" style="width:130px;">${item.name}</span><span class="pirce">${item.price}</span><span class="species">79金币</span><span class="jian"></span><i class="jianhao"></i><span class="num">${item.qty}</span><i class="jiahao"></i><span class="jia"></span><span class="close">删除</span>
                           </div>
                    </li>`
                }).join('');  
                total.innerHTML = '￥' + totalPrice.toFixed(2);
            }
                // --------事件委托-----------
                document.onclick = function(e){
                   var num = document.querySelector('.num');
                    e = e || window.event;
                    if(e.target.className === 'close'){
                        var li = e.target.parentNode.parentNode;
                        var ID =li.getAttribute('data-guid');

                        for(var i=0;i<goodslist.length;i++){
                            if(goodslist[i].id == ID){
                                goodslist.splice(i,1);
                                break;
                            }
                        }
                            var now = new Date();
                            now.setDate(now.getDate()+7);
                            document.cookie = 'goodslist=' + JSON.stringify(goodslist) + ';expires=' + now.toUTCString();
                            gender();
                    }

                    // ----------加号数量加1--------
                    if(e.target.className == 'jia'){
                       var li = e.target.parentNode.parentNode;

                       var ID =li.getAttribute('data-guid');

                       // var _num = num.innerHTML*1;

                       for(var i=0;i<goodslist.length;i++){
                            if(goodslist[i].id == ID){
                                var _num1 = num.innerText*1;
                                _num1+=1;
                                num.innerText = _num1;
                                goodslist[i].qty++;
                                break;
                            }
                       }
                       document.cookie = 'goodslist=' + JSON.stringify(goodslist);
                         total.innerText=0;
                         gender();
                    }
                    // -------------减号数量减一---------
                    if(e.target.className =='jianhao'){
                        var li = e.target.parentNode.parentNode;
                        var num=e.target.nextElementSibling;
                        console.log(666);
                        var ID =li.getAttribute('data-guid');

                        var _num = num.innerHTML*1;
                        for(var i=0;goodslist.length;i++){
                            if(goodslist[i].id == ID){
                                var _num2 = num.innerText*1;
                                _num2-=1;
                                if(_num2<=0){
                                    return;
                                }
                                num.innerText = _num2;
                                goodslist[i].qty--;
                                break;
                            }
                        }
                        document.cookie = 'goodslist=' + JSON.stringify(goodslist);
                        total.innerText=0;

                         gender();
                    }
                }
        })
    })
});