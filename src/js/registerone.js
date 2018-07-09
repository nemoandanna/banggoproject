jQuery(function($){

    $.get("../api/randomcode.php",function(rescode){
  
         var codecontent = "dzr2";
         let codeArr = JSON.parse(rescode);
         console.log(codeArr);
         $('.changeworning').on('click',function(){
            let randomNum1 = parseInt(Math.random()*10-1);
            let randomurl = codeArr[randomNum1].imgurl;

             let cimgattr1 = `../${randomurl}`;

             codecontent = codeArr[randomNum1].numcontent;
             $('.imgcontent').children().attr('src',cimgattr1);
             return codecontent;
         });
         $('#btnone').on('click',function(){
            let status = true;
            let codestatus = true;
            let username = $('#username').val();
            let phoneNum = $('#phoneNum').val();
            let $usernameworning = $('.idworn');
            let $phoneworning = $('.pworn');
            let rcode = $('#randomcode').val().toLowerCase();
            let regusername = /^[a-zA-z]\w{6,22}$/;
            let regphoneNum = /^1\d{10}$/;
            if(rcode!=codecontent){
                    codestatus = false;
                    $('.pscw').show();

            }
            
            if(regusername.test(username) && regphoneNum.test(phoneNum) && codestatus){
                $.ajax({
                    type:'POST',
                    data:`username=${username}&phoneNum=${phoneNum}`,
                    url:'../api/registerone.php',
                     success: function(res){
    
                        let comfirm = JSON.parse(res);
                        // console.log(comfirm)
                           if(comfirm.data1.length>0){
                              status = false;
                              $usernameworning.text('*该用户名已注册').css({color:'red'});
                           }
                           if(comfirm.data2.length>0){
                               status = false;
                            $phoneworning.text('*该手机号已注册').css({color:'red'});
                           }
                          if(status){
                               window.location.href =   "../html/register2.html";
                               localStorage.setItem("username",username);
                               localStorage.setItem("phoneNum",phoneNum);
                          } 
                           
                 }
        
                });
            }
            else if(!regusername.test(username)){
                $usernameworning.text('*请输入有效的格式').css({color:'red'});
            }
            else if(!regphoneNum.test(phoneNum)){
                $phoneworning.text('*请输入有效的格式').css({color:'red'});
            }
            
            
            
        });
    
    });

    


    
 
   
});
    