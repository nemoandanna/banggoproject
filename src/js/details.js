jQuery(function(){

    let $showItem = $('.smallpic ul');
    let $bigpicItem = $('.bigpic>img');

    $showItem.on('click','.showli',function(){
       $(this).addClass('bordercolor');
       $(this).siblings().removeClass('bordercolor');
       let showurl = $(this).children().attr("src");
       $bigpicItem.attr("src",showurl);
    
    });
    $('.bigpic').mouseenter(function(ev){
        ev = ev || event.ev;
        // console.log(starty)
        $('.saomiao').show();
        $('.bigpic').mousemove(function(e){
            this.style.cursor = 'crosshair';
            e = e || event.e;
            var ox = e.pageX-$('.bigpic')[0].offsetLeft-$('.saomiao').width()/2;
            var oy = e.pageY-$('.bigpic').height()/2-$('.bigpic')[0].offsetTop+$('.bigpic').height()/2-$('.saomiao').height()/2;

           $('.saomiao').css({left:ox,top:oy});

           if(e.pageX>($('.bigpic')[0].offsetLeft+$('.bigpic').width()/2+$('.saomiao').width()/2)){
                $('.saomiao').css({left:$('.bigpic').width()/2});
           }
           if(e.pageX<($('.bigpic')[0].offsetLeft+$('.saomiao').width()/2)){

                $('.saomiao').css({left:0})
           }
           if(e.pageY<($('.bigpic')[0].offsetTop+$('.saomiao').height()/2)){
                $('.saomiao').css({top:0});
           }
           if(e.pageY>($('.bigpic')[0].offsetTop+$('.bigpic').height()-$('.saomiao').height()/2)){
                $('.saomiao').css({top:$('.bigpic').height()/2});
           }
           $('#saomiaoshow').show();

           let showAttr = $(this).children().eq(0).attr('src');
           $('#saomiaoshow').children().eq(0).attr('src',showAttr);
           let left1 = parseInt($('.saomiao')[0].style.left);
           let top1 = parseInt($('.saomiao')[0].style.top);

           $('#saomiaoshow').children().eq(0).css({
               top:-top1*(1000/480),
               left:-left1*(1000/480)
           });
           $('.bigpic').mouseleave(function(){
           $('.saomiao').hide();
           $('#saomiaoshow').hide();
           
        });
        });

    });

    let $colorSelect = $('#colorSelect');
    var buystatus;
    $('.mianselectshow').on('click','a',function(){
        let currentstyle = $(this).children().eq(0).attr('src');
        let currentTxt = $(this).attr('data-value');
        $bigpicItem.attr('src',currentstyle);
        $colorSelect.text( currentTxt);
        $(this).css({
            borderColor:'orangered'
        });
        $(this).siblings().css({
            borderColor:'#DCDCDC'
        })
    });
    $('.choosesize').on('click','a',function(){
        let currentTxtps = $(this).text();
        $('#sizeSelect').text(currentTxtps);
        $(this).css({
            borderColor:'orangered'
        });
        $(this).siblings().css({
            borderColor:'#DCDCDC'
        });
        buystatus = true;
    });
    let currentNum = $('.shopnum').val();
    console.log(currentNum)
    let $buycarsnumshow = $('#buycarsnumshow');
    $('#btn_num_decrease').on('click',function(){
         if(currentNum === 1){
             $('.numworning').show();
             currentNum=1;
             $buycarsnumshow.text('0');
         }
         else{
            currentNum--;
            $('.shopnum').attr('value',currentNum);
         }
    });
    $('#btn_num_add').on('click',function(){
        if(currentNum >= 1){
            $('.numworning').hide();
            currentNum++;
        }
        $('.shopnum').attr('value',currentNum);

   });  
   
   $('#enter_buycar').on('click',function(){

    if(buystatus===true){
        $('#scrrenall').show().animate({opacity: 0.8});
        $('#fixedbuycar').show(300);
        $buycarsnumshow.text(currentNum);
        $('#btnclosecar').on('click',function(){
         $('#scrrenall').hide().animate({opacity: 0});
         $('#fixedbuycar').hide(300);
        });
        $('#fixedclose').on('click',function(){
         $('#scrrenall').hide().animate({opacity: 0});
         $('#fixedbuycar').hide(300);
        });


    }
    else{
        alert('请选择样式和尺码')
    }

   });

     if(location.href.indexOf('goodsid')){
       let $searchId = location.href.split('?')[1].split('=')[1];
       $.get("../api/details.php",{searchId:$searchId},function(res){
           let lastresObj = JSON.parse(res)[0];
           console.log(lastresObj);
           $('.goodsstyles i').text(lastresObj.styles);   
           $('#brandShow').text(lastresObj.brand);
           $('#strongprice').text(lastresObj.sale);
           $('.goodsinformation>li>em').text(lastresObj.price);
           $('.goodsinformation>li>span').text(lastresObj.rebate+'折');
           console.log(lastresObj.imgurl)
           let currentimg = `../${lastresObj.imgurl}`;
           $('.bigpic img').attr('src',currentimg);
           $('.smallpic>ul>li:first-child>img').attr('src',currentimg);

       })
   }
   if((location.href.indexOf('shopid'))&&(location.href.indexOf('username'))){
    let $searchId3 = location.href.split('?')[1].split('&')[1].split('=')[1];
    $.get("../api/details.php",{searchId:$searchId3},function(res){
        let lastresObj = JSON.parse(res)[0];
        console.log(lastresObj);
        $('.goodsstyles i').text(lastresObj.styles);   
        $('#brandShow').text(lastresObj.brand);
        $('#strongprice').text(lastresObj.sale);
        $('.goodsinformation>li>em').text(lastresObj.price);
        $('.goodsinformation>li>span').text(lastresObj.rebate+'折');
        console.log(lastresObj.imgurl)
        let currentimg = `../${lastresObj.imgurl}`;
        $('.bigpic img').attr('src',currentimg);
        $('.smallpic>ul>li:first-child>img').attr('src',currentimg);
        $('#enter_buycar').on('click',function(){
            let $clothscolor = $('#colorSelect').text();
            let $clothssize = $('#sizeSelect').text();
            let $buybrand = $('#brandShow').text();
            let $buystyle = $('.sshow').text();
            let $buyprice = $('#strongprice').text();
            console.log($clothscolor);
            console.log($clothssize);
            let $shopNumber = parseInt($('.shopnum').attr('value'));
            let $username = location.href.split('?')[1].split('&')[0].split('=')[1];
   
            $.get(
                "../api/buycar.php",
                {
                    username:$username,
                    shopid:$searchId3,
                    shopnumber:$shopNumber,
                    clothscolor:$clothscolor,
                    clothssize:$clothssize,
                    buybrand:$buybrand,
                    buystyle:$buystyle,
                    buyprice:$buyprice

                },
                    function(res){ 
                        return
                    });

        });

        $('.carendl a').on('click',function(){
            let $username = location.href.split('?')[1].split('&')[0].split('=')[1];
            window.location.href = `../html/count.html?${$username}`;
        })
        

    });
    


   }
  
})