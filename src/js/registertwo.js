jQuery(function($){

    var username1 = localStorage.username;
    var phoneNum1 = localStorage.phoneNum;
    console.log(username1,phoneNum1);
    $('#username').attr('value',username1);
    $('#phoneNum').attr('value',phoneNum1);


$('#btntwo').on('click',function(){
    console.log(11111)
    let pwd = $('#password').val();
    let repwd = $('#repassword').val();
    let $repwd = $('.repwd');
    let username = $('#username').val();
    let phoneNum = $('#phoneNum').val();
    let regpsw = /^[a-zA-Z]\w{5,17}$/;
    if(pwd === repwd && regpsw.test(pwd)){
        $.ajax({
            type:'POST',
            data:`username=${username}&pwd=${pwd}&phoneNum=${phoneNum}`,
            url:'../api/registertwo.php',
             success: function(res){
                console.log(res)
                  window.location.href =   "../html/register3.html";        
         }

        });
    }
    else if(pwd != repwd){
        $repwd.text('*输入密码不一致').css({color:'red'});
    }
    else {
        $repwd.text('*请仔细检查').css({color:'red'});
    }
});
})