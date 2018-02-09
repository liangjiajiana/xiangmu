require(['config'],function(){
    require(['jquery'],function($){
        jQuery(function($){
    
            // ---------生成验证码--------
            var code = document.querySelector('.code');
            function createCode(){
                var res = '';
                for(var i=0;i<4;i++){
                    var num = parseInt(Math.random()*10);
                    res+=num;
                }
                return res;
            }
                var yzm = createCode();

                code.innerHTML = yzm;

            $('.btn').on('click',function(){
                // ------正则匹配用户名------
               var username = document.querySelector('#username').value;

               var reg = /^[a-z][a-z0-9\-]{5,19}$/;

               if(!reg.test(username)){
                    alert('你的用户名不合法');
                    return false;
               }

               // ----------正则匹配密码-------
               var password = document.querySelector('#password').value;

               var reg = /^\S{1,20}$/
               if(!reg.test(password)){
                    alert('请输入密码');
                    return false;
               }

               var password2 = document.querySelector('#password2').value;

                var reg = /^\S{1,20}$/
                if(!reg.test(password2)){
                    alert('请再次输入密码');
                }
               
                if(password!=password2){
                    alert('两次密码输入不一致');
                    return false;
                }

                var vcode = document.querySelector('.vcode');

                var _vcode = vcode.value;

                if(_vcode === ''){
                    alert('请输入验证码');
                    return false;
                }
                if(_vcode != yzm){
                    alert('验证错误');
                    return false;
                }
                // --------勾选协议--------
                var xuanze = document.querySelector('.xuanze');

                var check = xuanze.checked;

                if(check===false){
                    alert('请勾选注册协议');
                    return false;
                }

                $.ajax({
                    url:'../api/reg.php',
                    data:{
                        username:$('#username').val(),
                        password:$('#password').val()
                    },

                    success:function(data){
                        if(data === 'success'){
                            location.href = '../html/login.html';
                        }else{
                            alert('用户已注册');
                        }
                    }
                })

            })    
        })
    })
})