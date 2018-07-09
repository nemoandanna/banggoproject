let indexjs = {

   banner:function(){
       
       jQuery(function($){

        let $ul = $('.contentBox ul')[0];
        let oli = $ul.children;
        var index = 0;
        var timer;
        aotuPlay(index);
        lightAuto(index);
        hightLight(0);
        function translate(index){
            $ul.style.left = -1263*index + 'px';
        }
        function aotuPlay(index){
        
           timer =  setInterval(()=>{
                translate(index);
                $(oli[index]).animate({opacity:1});
                index++;
                $(oli[index]).animate({opacity:0});
                hightLight(index);
  
                if(index >3){
                    $(oli[index]).animate({opacity:1});
                    index=0;
                    $(oli[index]).animate({opacity:0});
                       
                }
            },3000);
           }
        function stop(){
            clearInterval(timer);
        }
        function hightLight(index){
            let $liList = $('.showImg').children('li').eq(index-1);
            $('.showImg').children('li').removeClass('hightactive');
            $liList.addClass('hightactive');
        }
        function lightAuto(index){
            
            $('.showImg').on('mouseenter','li',function(){

                index = $(this).index();
                translate(index);
                $('.showImg').children().removeClass('hightactive');
                $(this).addClass('hightactive');
                stop();
                    
           });
           $('.showImg').on('mouseleave','li',function(index){

               index = $(this).index();
               aotuPlay(index);
                   
          });
        }
           
       }) 
   },
   navSlect:function(){
      jQuery(function(){
          let $navlShow = $('.navl');
          $navlShow.on('mouseenter','.showS',function(){
              $(this).children('ul').show();
          }).on('mouseleave','.showS',function(){
            $(this).children('ul').hide();
          })
      })
   },

   jsDomConstruction: function(){
       jQuery(function(){
           getDate();
        function getDate(){ 
            $.get("../api/generateGoodsList.php",function(res){
                let goodslist = JSON.parse(res);
                // console.log(goodslist.data5);
                let $mianselect = $('.mianselect');
                let rs1 = '';
                goodslist.data1.forEach((item) => {
                    rs1+=`<li><a href="javascript::">
                    <img src="../${item.imgurl}"/>
                    </a></li>`;
                });
                $mianselect.html(rs1);

                let $hotbrand = $('.hotbrand');
                let res2 = '';
                goodslist.data2.forEach((item)=>{
                    res2+=`<li><a href="javascript::">
                    <img src="../${item.imgurl}"/>
                    </a></li>`;
                });
                $hotbrand.html(res2);

                let $todayhot = $('.todayhot');
                let rs3 = '';
                goodslist.data3.forEach((item)=>{
                    rs3+=`<li>
                        <a href="javascript::"><img src="../${item.imgurl}"/></a>
                        <h4><a href="javascript::">${item.brand}</a><a href="javascript::">${item.rebate}</a></h4>
                        <span><b>￥${item.sale}</b><i>￥${item.price}</i></span> 
                        </li>`;
                });
                $todayhot.html(rs3);
                
                let $mancloths = $('.mancloths');
                let rs4 = '';
                goodslist.data4.forEach((item)=>{
                    rs4+= `<li>
                    <a href="javascript::"><img src="../img/${item.imgurl}"/></a>
                    <h4><a href="javascript::">${item.brand}</a><a href="javascript::">${item.rebate}</a></h4>
                    <span><b>￥${item.sale}</b><i>￥${item.price}</i></span> 
                    </li>`;
                });
                
                $mancloths.html(rs4);
                $mancloths.children().eq(0).children().eq(0).siblings().remove();   

                let $girlcloths = $('.girlcloths');
                let rs5 = '';
                goodslist.data5.forEach((item)=>{
                    rs5+= `<li>
                    <a href="javascript::"><img src="../img/${item.imgurl}"/></a>
                    <h4><a href="javascript::">${item.brand}</a><a href="javascript::">${item.rebate}</a></h4>
                    <span><b>￥${item.sale}</b><i>￥${item.price}</i></span> 
                    </li>`;
                });

                $girlcloths.html(rs5);
                $girlcloths.children().eq(3).children().eq(0).siblings().remove();  

                let $childcloths = $('.childcloths');
                let rs6 = '';
                goodslist.data6.forEach((item)=>{
                    rs6+= `<li>
                    <a href="javascript::"><img src="../${item.imgurl}"/></a>
                    <h4><a href="javascript::">${item.brand}</a><a href="javascript::">${item.rebate}</a></h4>
                    <span><b>￥${item.sale}</b><i>￥${item.price}</i></span> 
                    </li>`;
                });

                $childcloths.html(rs6);
                $childcloths.children().eq(0).children().eq(0).siblings().remove();  

                let $shoespage = $('.shoespage');
                let rs7 = '';
                goodslist.data7.forEach((item)=>{
                    rs7+= `<li>
                    <a href="javascript::"><img src="../${item.imgurl}"/></a>
                    <h4><a href="javascript::">${item.brand}</a><a href="javascript::">${item.rebate}</a></h4>
                    <span><b>￥${item.sale}</b><i>￥${item.price}</i></span> 
                    </li>`;
                });

                $shoespage.html(rs7);
                $shoespage.children().eq(3).children().eq(0).siblings().remove();  


            })
        }
       })
   },
   testLoginStatus:function(){
       jQuery(function($){
           let $currenturl = window.location.href;
           console.log($currenturl)
           if($currenturl.indexOf('username')>0){
            //    显示登录状态
               $('.loginS').text('您已登录成功!').css({
                   color:'red'
               });
           }
       })
   },
   pageChage:function(){
       jQuery(function($){
           $('#jsdom>div').on('click', 'li',function(){
            window.location.href = "../html/details.html";
           });
       })
   },
   goodslistpagechange:function(){
        jQuery(function($){
            $('#jsdom>div>h2').on('click','.mmp',function(){
                if(location.href.indexOf('username')){
                    let $searchusername = location.href.split('?')[1].split('=')[1];
                     window.location.href = `../html/goodslist.html?username=${$searchusername}`;
                }
                
            })
        })
   }
}
indexjs.banner();
indexjs.navSlect();
indexjs.jsDomConstruction();
indexjs.testLoginStatus();
indexjs.pageChage();
indexjs.goodslistpagechange()