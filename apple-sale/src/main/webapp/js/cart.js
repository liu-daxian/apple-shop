/* JS Document */

/******************************

[Table of Contents]

1. Vars and Inits
2. Init Menu
3. InitQty


******************************/

$(document).ready(function()
{
	"use strict";

	
	//这里是点击结算按钮,直接提交表单
	$("#a_account").click(function(){
		
		$("form").attr('action','jiesuan?type=bufen');
		$("form").submit();
	});
	
	
	//全选和全不选的复选框
	$("#allcheck").change(function(){
		
		$("input[name='goodscheck']").prop("checked",$("#allcheck").prop("checked"));
		
	});
	
	$("input[name='goodscheck']").change(function(){
		
		var ck = $("input[name='goodscheck']").length == $("input[name='goodscheck']:checked").length;
		
		$("#allcheck").prop("checked",ck);
		
	});
	
	var menu = $('.menu');
	var burger = $('.hamburger');
	var menuActive = false;

	$(window).on('resize', function()
	{
		setTimeout(function()
		{
			$(window).trigger('resize.px.parallax');
		}, 375);
	});

	initMenu();
	initQty();

	/* 

	2. Init Menu

	*/

	function initMenu()
	{
		if(menu.length)
		{
			if($('.hamburger').length)
			{
				burger.on('click', function()
				{
					if(menuActive)
					{
						closeMenu();
					}
					else
					{
						openMenu();

						$(document).one('click', function cls(e)
						{
							if($(e.target).hasClass('menu_mm'))
							{
								$(document).one('click', cls);
							}
							else
							{
								closeMenu();
							}
						});
					}
				});
			}
		}
	}

	function openMenu()
	{
		menu.addClass('active');
		menuActive = true;
	}

	function closeMenu()
	{
		menu.removeClass('active');
		menuActive = false;
	}

	/* 

	3. Init Qty

	*/

	function initQty()
	{
		if($('.product_quantity').length)
		{
			var qtys = $('.product_quantity');

			qtys.each(function()
			{
				var qty = $(this);
				var sub = qty.find('.qty_sub');
				var add = qty.find('.qty_add');
				var num = qty.find('.product_num');
				var original;
				var newValue;

				sub.on('click', function()
				{
					original = parseFloat(qty.find('.product_num').text());
					if(original > 0)
						{
							newValue = original - 1;
						}
					num.text(newValue);
					
					//向后台发送一个ajax请求,对购物车的某个商品进行减
					var gid = $(this).attr("gid");
					
					$.ajax({
						url:"subShopCar",
						type:"post",
						data:{"gid":gid},
						success:function(json){

							if(json.resultCode == '00000'){ //代表是正常的数量-1

								$("#cart_num").html(json.total);//如果是标签就会进行解析
								// $("#cart_num").text();//纯粹当成字符串来处理
								var str = "¥  "+json.totalPrice+"("+json.total+")";
								$("#cart_price").html(str);

								//当前行的商品的总价格
								var lb = "#lab_"+gid;
								$(lb).html(json.currentPrice);

							}else if(json.resultCode == '00009'){ //要删除当前纪录行

								$("#cart_num").html(json.total);//如果是标签就会进行解析
								// $("#cart_num").text();//纯粹当成字符串来处理
								var str = "¥  "+json.totalPrice+"("+json.total+")";
								$("#cart_price").html(str);

								//删除当前的记录行
								var liid = "#li_"+gid;
								$(liid).remove();

							}else{
								alert(json.resultMsg);
							}
						}
					});
					
				});

				<!--当我点击+号时,会触发的js方法-->
				add.on('click', function()
				{
					original = parseFloat(qty.find('.product_num').text());
					newValue = original + 1;
					num.text(newValue);
					
					//发送ajax请求,然后得到结果以后,需要将数量+1
					//$(this) :代表当前点击的那个DIV
					var gid = $(this).attr("gid");
					
					$.ajax({
						url:"addShopCar",
						type:"post",
						data:{"gid":gid},
						success:function(json){
							
							if(json.resultCode == '00000'){
								$("#cart_num").html(json.total);//如果是标签就会进行解析
								// $("#cart_num").text();//纯粹当成字符串来处理
								var str = "¥  "+json.totalPrice+"("+json.total+")";
								$("#cart_price").html(str);

								//当前行的商品的总价格
								var lb = "#lab_"+gid;
								$(lb).html(json.currentPrice);
							}
						}
					});
					
				});
			});
		}
	}

});