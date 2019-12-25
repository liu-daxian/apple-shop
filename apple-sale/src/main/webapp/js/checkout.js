/* JS Document */

/******************************

[Table of Contents]

1. Vars and Inits
2. Init Menu


******************************/

$(document).ready(function()
{
	"use strict";

	//生成订单
	$("#act_pay").click(function(){
		
		$("form").attr("action",'order.do?type=pay');
		$("form").submit();
		
	});
	

	$("#save_adr").click(function(){
		
		//这里需要保存收货人,收货电话,收货邮箱,收货人详细地址;
		//但是这里checkout_address只存一个详细地址;懒得写了
		
		var address = $("#checkout_address").val();
		
		$.ajax({
			
			url:"order.do?type=addAddress",
			type:"post",
			data:{"address":address},
			success:function(result){
				
				var json = eval('('+result+')');
				
				if(json.result == '0000'){
					alert("地址保存成功");
				}else{
					alert(json.msg);
				}
				
			}
			
		});
		
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

});