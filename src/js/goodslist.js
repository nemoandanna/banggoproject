let goodsListPage = {
    
    getConstruction : function(){

        jQuery(function($){

            $.get("../api/goodspage.php",function(res){
                    creatConstruction(res);
                    detailsChange();
                    goodsListToDetails();
            });

            let $page = 1*30;
            let $brandf = '';
            $('.centerps a').eq(2).css({borderColor:'red'});
            $('.brandfilter').on('click','i',function(){
                $(this).css({
                    background:'black',
                    color:'white'
                }).siblings().css({
                    background:'#f0f0f0',
                    color:'black'
                });
              $brandf = $(this).text();
                console.log($brandf)
              $.get("../api/brandfliter.php",{brandf:$brandf},function(res){
                creatConstruction(res);        
             });

         });
    function clickpage(){
            $('.centerps').on('click','a',function(){ 
                $(this).css({borderColor:'red'})
                $(this).siblings().css({borderColor:'#e9e9e9'})
                
                if($(this).attr('class') === 'btnpage'){
                    $page = 30*parseInt($(this).text());
                }
                if($(this).attr('id') === 'btnStart'){
                    $page = 1*30;
                }
                if($(this).attr('id') === 'btnLast'){
                    $page = 210;
                }
                if($(this).attr('id') === 'btnPre'){
                    $page-=30;
                    if($page<30){
                        $page=30;
                    }
                }
                if($(this).attr('id') === 'btnNext'){
                    $page+=30;
                    if($page>210){
                        $page=210;
                    }
                }
            
            console.log($page);
            $('#dateshowqq').text($page);
            
            $.get("../api/goodspage.php",{page:$page},function(res){
                creatConstruction(res);
             })
            });
        }
         clickpage();

           $('.defaultfilter').css({
                background:'black',
                color:'white'
           })
           $('.priceasc').on('click',function(){
                $(this).css({
                    background:'black',
                    color:'white'
                }).siblings().css({
                    background:'#f0f0f0',
                    color:'black'
                });

                $.get("../api/priceinterval.php",function(res){
                    creatConstructionAgain(res)   
                });
           });
           $('.rebateasc').on('click',function(){
            $(this).css({
                background:'black',
                color:'white'
            }).siblings().css({
                background:'#f0f0f0',
                color:'black'
            })
            $.get("../api/rebatefliter.php",function(res){
                 creatConstructionAgain(res) 
            });
       });
      })
    }
}
function detailsChange(){
    $('.goodscontentlist').on('click','li',function(){
        let $searchId = $(this).attr('data-id');
        console.log($searchId)
        window.location.href = `../html/details.html?goodsid=${$searchId}`;
    });
}
function goodsListToDetails(){
    $('.goodscontentlist ').on('click','li',function(){
        let $searchIdre = $(this).attr('data-id');
        let $searchuname = location.href.split('?')[1].split('=')[1];
         if(location.href.indexOf('username')){

             window.location.href = `../html/details.html?username=${$searchuname}&shopid=${$searchIdre}`;
         }
    })
}



function creatConstruction(res){
    let comfirmres = JSON.parse(res);
    let resdom = '';
    comfirmres.data1.forEach(function(item){
        resdom+=`<li data-id="${item.shopid}">
         <a href="javascript::"><img src="../${item.imgurl}"></a>
         <span>
         <a href="javascript::">${item.brand}</a>
         <i>${item.rebate}折</i>
         </span>
         <span><a href="javascript::">${item.styles}</a></span>
         <span><b>￥${item.sale}</b><i>￥${item.price}</i></span>
         </li>`
    });
    $('.goodscontentlist').html(resdom);
}
function creatConstructionAgain(res){
    let comfirmres = JSON.parse(res);
    let resdom = '';
    comfirmres.forEach(function(item){
    resdom+=`<li data-id="${item.shopid}">
            <a href="javascript::"><img src="../${item.imgurl}"></a>
            <span>
            <a href="javascript::">${item.brand}</a>
            <i>${item.rebate}折</i>
            </span>
            <span><a href="javascript::">${item.styles}</a></span>
            <span><b>￥${item.sale}</b><i>￥${item.price}       </i></span>
            </li>`
         });
           $('.goodscontentlist').html(resdom);
}
goodsListPage.getConstruction();

