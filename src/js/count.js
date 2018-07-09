
jQuery(function($){
    let $username = location.href.split('?')[1];
    function getcardate(){
        $.get("../api/count.php",{username:$username},function(res){
                 getcardateagain(res)
            
            $('.delateshop').on('click',function(){

                 let $shopid = $(this).attr('data-id')
                 $(this).parent().parent().remove();
                 $.get("../api/delateshop.php",{username:$username,shopid:$shopid},function(res){
                    let confirmres1 = JSON.parse(res);
                    let tolprice1 = 0;
                    confirmres1.forEach(function(item){
                        let smallprice1 = parseInt(item.shopnumber)*parseInt(item.buyprice);
                        tolprice1+=smallprice1;
                    })
                    $('.tolprice i').text(tolprice1);
                 })
                
            })



            // 全选
           $('#allselect').on('click',function(){
            if($(this).prop('checked')){
                $('.chec').attr('checked',true);
            }
            if($('.chec').prop('checked')&& !$(this).prop('checked')){
                $('.chec').attr('checked',false);
            }

           })
               
          
            
        })
    }
    getcardate()


    function getcardateagain(res){
        let confirmres = JSON.parse(res);
        let carres = '';
        console.log(confirmres)
        let tolprice = 0;
        confirmres.forEach(function(item){
            let smallprice = parseInt(item.shopnumber)*parseInt(item.buyprice);
            tolprice+=smallprice;
            carres+=`<ul>
                    <li>
                    <input type="checkbox" class="chec">
                    <a><img src="../img/goodsimg${item.shopid}.jpg"></a>
                    <p>${item.buybrand}</p>
                    <p>${item.buystyle}</p>
                    <p>商品编号：<i>${item.indexid}</i></p>
                    </li>
                    <li>
                    <p>颜色：<i>${item.clothscolor}</i></p>
                    <p>尺码：<i>${item.clothssize}</i></p>
                    </li>
                    <li>
                    <p>单价：<i>￥${item.buyprice}</i></p>
                    </li>
                    <li>
                    <span>-</span><input type="text" value="${item.shopnumber}"><span>+</span>
                    </li>
                    <li>
                        ￥${smallprice}
                    </li>
                    <li><a class="delateshop" data-id="${item.shopid}">删除</a></li>
                    </ul>`;
        });


        $('#countdom>div .contentdate').html(carres);
        $('.tolprice i').text(tolprice);
    }
})