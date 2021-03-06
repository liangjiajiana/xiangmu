;(function($){
    $.fn.yjCarousel = function(options){
        var defaults = {
            width:400,
            height:260,
            page:true,
            duration:2000,
            buttons:false,
            type:'fade',
            index:0,
            autoplay:true
        };
        this.each(function(idx,ele){
            var $self = $(ele);
            var opt = $.extend({},defaults,options);
            lastIndex:opt.imgs.length;
            $self.addClass('yj-carousel');
            $self.css({
                width:opt.width,
                height:opt.height
            });
            var yj = {
                init:function(){
                    opt.len = opt.imgs.length;
                    var $ul = $('<ul/>');
                    $ul.html(opt.imgs.map(function(url){
                        return '<li><img src="' + url + '"/></li>'
                    }).join(''));
                    $self.append($ul);
                    if(opt.buttons){
                        $('<span/>').addClass('btn-prev').html('&lt;').appendTo($self);
                        $('<span/>').addClass('btn-next').html('&gt;').appendTo($self);
                    }
                    var $page = $('<div/>').addClass('page').appendTo($self);
                    for($i=0;$i<opt.len;$i++){
                        var $img = $self.find('img');
                        if($i!=opt.index){
                            $img.eq($i).stop().animate({opacity:0});
                        }
                        var $span = $('<span/>').addClass('page_span').html($i+1);
                        $page.append($span);
                    }
                    $self.hover(function(){
                        clearInterval($self.timer);
                    },function(){
                        yj.move();
                    }).on('click','.btn-prev',function(){
                        opt.index--;
                        yj.show();
                    }).on('click','.btn-next',function(){
                        opt.index++;
                        yj.show();
                    }).on('click','.page_span',function(){
                        opt.index = $(this).text() - 1;
                        yj.show();
                    });
                    this.move();
                    this.show();
                    return this;
                },
                move:function(){
                    $self.timer = setInterval(function(){
                        opt.index++;
                        this.show();
                    }.bind(this),opt.duration);
                    return this;
                },
                show:function(){
                    var $img = $self.find('img');
                    var $page = $self.find('.page');
                    if(opt.index>=opt.len){
                        opt.index = 0;
                    }else if(opt.index<0){
                        opt.index = opt.len - 1;
                    }

                    $img.eq(opt.index).stop().animate({opacity:1});
                    $img.eq(opt.lastIndex).stop().animate({opacity:0});

                    $page.children().removeClass('active');
                    $page.children().eq(opt.index).addClass('active');

                    opt.lastIndex = opt.index;
                    return this;
                }
            };
            yj.init();
        });
        return this;
    };
})(jQuery);