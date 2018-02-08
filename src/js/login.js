jQuery(function($){
    // --------验证码----------
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
        
        $.ajax({
            url:'../api/login.php',
            data:{
                username:$('#username').val(),
                password:$('#password').val()
            },
            success:function(data){
                console.log(data);
                if(data == 'success'){
                    location.href = '../index.html';
                }else{
                    alert('登录失败');
                }
            }
        })
    })
})