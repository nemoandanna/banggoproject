jQuery(function($){
    let $loginstyle = $('ul');
    let $styleone = $('.styleone');
    let $styletwo = $('.styletwo');
    $loginstyle.on('click','li',function(){
        let idx = $(this).index();
        $(this).addClass('bordert');
        $(this).siblings().removeClass('bordert');
        idx===0?($styleone.show()&&$styletwo.hide()):($styletwo.show()&&$styleone.hide());

    });
     
    $.get("../api/randomcode.php",function(rescode){
  
        var codecontent = "dzr2";
        let codeArr = JSON.parse(rescode);
        console.log(codeArr)
        $('.changeworning').on('click',function(){
           let randomNum1 = parseInt(Math.random()*10-1);
           let randomurl = codeArr[randomNum1].imgurl;

            let cimgattr1 = `../${randomurl}`;

            codecontent = codeArr[randomNum1].numcontent;
            $('.imgcontent').children().attr('src',cimgattr1);
            return codecontent;
        });
        console.log(codecontent)
        $('#btnlogin').on('click',function(){
        let $loginusername = $('#loginusename').val();
        let $loginphone = $('#loginphone').val();
        let $loginpwd = $('.styleone #loginpwd').val() || $('.styletwo #loginpwd').val(); 
        let codestatus = true;
        let rcode = $('#randomcode').val().toLowerCase();
        console.log(rcode)
        if(rcode!=codecontent){
            codestatus = false;
            $('.pscw').show();

        }
        if(codestatus){
            $.ajax({
                type:'POST',
                data:`loginusername=${$loginusername}&loginphone=${$loginphone}&loginpwd=${$loginpwd}`,
                url:'../api/login.php',
                success:function(res){  
                    let confirm = JSON.parse(res);
                    let $worning = $('#worning');
                    if(confirm.data1.length>0 || confirm.data2.length>0){
                        if(confirm.data3.length>0){
                            window.location.href = `../html/index.html?username=${$loginusername}`;
                        }
                        else{
                            
                            $worning.text('密码输入错误').css({
                                color:'orangered',
                                fontSize:'12px',
                                marginTop:'58px'
                            });
                        }
                        
                    }
                    if(confirm.data1.length<1 &&confirm.data2.length<1){
                        $worning.text('账号输入错误').css({
                            color:'orangered',
                            fontSize:'12px',
                            marginTop:'58px'
                        });
                    }
                 
                }
            });
        }

   
    });


        });



})

