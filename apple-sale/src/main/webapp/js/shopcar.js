
//jquery的页面加载事件
$(document).ready(function(){

	var funclick = function(event){

		//获取当前点击的a标签的 gid的属性;
		// $(this).attr("gid"); //获取标签的静态属性 都是用attr
		//$(this).prop("checked");//如果是需要获取动态的内容;比如复选框的是否选中;就是用prop


		$.ajax({
			url:"addShopCar",
			data:{"gid":$(this).attr("gid")},
			type:"post",
			success:function(json){

				if("00000" == json.resultCode){//响应成功

					$("#cart_num").html(json.total);//如果是标签就会进行解析
					// $("#cart_num").text();//纯粹当成字符串来处理
					var str = "¥  "+json.totalPrice+"("+json.total+")";
					$("#cart_price").html(str);
				}
			}
		});

	}

	$(".addshopcar").click(funclick); //给样式为addshopcar的元素绑定一个点击事件

});









/*

//页面加载的事件
$(document).ready(function(){
	
	//给添加商品到购物车的按钮,绑定一个点击事件;
	var fun = function(event){
		
		$(".addshopcar").unbind('click'); //给这个按钮解绑这个事件
		
		$.ajax({
			
			url:"addShopCar",
			data:{"gid":$(this).attr("gid")}, //$(this):代表当前(点击)的对象
			type:"post",
			success:function(json){
				
				if(json.result == '0000'){ //添加成功
					
					//实现一个动画效果;
					div_left = $(event.target).offset().left;
					div_top = $(event.target).offset().top;
					
					//1:创建一个div;并且制定这个div的位置:
					
					$("body").append($("<div id='sc_div'>").addClass("shopcar_div").css('left',div_left).css('top',div_top));
					
					
					//2:使用动画效果,将div移到目标位置,并且删掉/隐藏;
					target_left = $("#cart_num").offset().left;
					target_top = $("#cart_num").offset().top;
					
					$("#sc_div").animate({left:target_left,top:target_top,width:"0px",height:"0px"},2000);
					
					setTimeout(function(){
						$("#sc_div").remove();
						$(".addshopcar").click(fun);
					}, 2010);

					//是对数据的展示

					//  numberCount:0
					//  priceCount:0.00
					var tt = json.resultMsg.split(",");

					var number = tt[0]; //商品的总数
					var price = tt[1];//商品的总价
					var str = '¥'+price+'('+number+')';

					$("#cart_num").html(number);
					$("#cart_price").html(str);

					// var str = json.msg.split(",");//"255.00,3"
					// $("#cart_num").html(str[1]);//str[1]:咱们的数量
					// $("#cart_price").html('¥'+str[0]+'('+str[1]+')');
				}else{
					alert(json.msg);
				}
				
			}
		});
	}
	
	$(".addshopcar").click(fun);
	
});*/
