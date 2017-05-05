$(document).ready(function()
{
	var count = 0;
	var jump = $("#jump");
	var duck = $("#duck");
	box_left = ($(window).width() - jump.width() / 2) / 3 * 2;

	//嘎嚕喵
	$("#shake").hover(
		function()
		{
			$(this).css("transform","translate(-10em,0em)");
		},
		function()
		{
			$(this).css(
				{"transform": "translate(0em,0em)",
				 "transition": "1s"}
			);
		}
	);
	//萌喵專區-滑過監聽
	$("#cat").hover(
		function()
		{
			rotate_deg = Math.random() * 360;
			num = parseInt(Math.random() * 400 / 100);

			switch(num)
			{
				//左上
				case 0:
					position_x = Math.random() * 50;
					position_y = Math.random() * 50;
					move = "translate(-" + position_x + "em,-" + position_y +"em)";
				break;

				//右上
				case 1:
					position_x = Math.random() * 30;
					position_y = Math.random() * 30;
					move = "translate(" + position_x + "em,-" + position_y +"em)";
				break;

				//左下
				case 2:
					position_x = Math.random() * 50;
					position_y = Math.random() * 20;
					move = "translate(-" + position_x + "em," + position_y +"em)";
				break;

				//右下
				case 3:
					position_x = Math.random() * 30;
					position_y = Math.random() * 20;
					move = "translate(" + position_x + "em," + position_y +"em)";
				break;
			}

			move_deg = "rotate(" + rotate_deg + "deg)";
			$(this).text("來追我啊~ヽ(｡∀ﾟ)ﾉ");
			$(this).css({
					"border-color": "#48df2a",
					"background-color": "#48df2a",
					"transform": move + " " + move_deg,
					"transition": "1s"});
		}, 
		function()
		{
			$(this).text("內有萌貓~");
			$(this).css({
						"border-color" : "#0275d8",
						"background-color" : "#0275d8",
						"transform" : "translate(0em,0em)"});
		}
	);
	//萌喵專區-點擊監聽
	$("#cat").click(
		function()
		{
			$(this).text("O H O");
		}
	);
	//互相傷害-圖片
	$("#secret").hover(
		function()
		{
			box_top = 80;
			
			jump.css({'left': box_left,'position':'absolute'});
			//顯示圖片
			jump.show();

			for(var i = 1; i<= 4; i++)
			{
				//上
				jump.animate({top:box_top - (40 - 10 * i) - 20}, 50);
				//下
				jump.animate({top:box_top + 2 * (40 - 10 * i) - 20}, 50);
				//左
				jump.animate({left:box_left - (40 - 10 * i) + 30}, 50);
				//右
				jump.animate({left:box_left + 2 * (40 - 10 * i) + 30}, 50);
				//大小
				duck.animate({width:"150%"});
			}
		},
		function()
		{
			jump.hide();
			jump.css("left", "box_left");
			duck.animate({width:"80%"});
		}
	);
	//首頁頁尾
	$(".icon").hover(
		function()
		{
			position_x = Math.random() * 10;
			position_y = Math.random() * 50;
			move = "translate(" + position_x + "em,-" + position_y +"em)";
			$(this).css({"transform": move + "rotate(180deg)", "transition" : "0.7s"});
		},
		function()
		{
			$(this).css("transform","translate(0em,0em)");
		}
	);
	//萌喵專區-播音樂
	$("#run").hover(
		function()
		{
			if(count == 0)
			{
				$(this).after("<div style='position:fixed;width:100%;height:100%'><iframe id='video' frameborder='0' height='100%' width='100%' src='https://youtube.com/embed/zuCkoctUg1w?autoplay=1&controls=0&autohide=1'></iframe></div>");
				count++;
			}
		},
		function(){}
	);
});

var count = 0;
function cat()
{
	if(count <= 5)
	{
		alert("請從網頁下方 第二排第三個進入，謝謝");
	}
	if(count > 5 && count <= 10)
	{
		alert("不是告訴你要從下方的連結「內有萌貓~」過去了嗎");
	}
	if(count > 10)
	{
		alert("唉....講不聽膩，只好幫你轉過去了→ _ →");
		document.location.href="cat.html";
	}
	count++;
	return false;
}

function secret()
{
	alert("你怎麼會覺得我會跟你說呢?(ㆆᴗㆆ)\n這當然只是騙你的啦wwww σ`▽´)σ");
	return false;
}

function dead(choose)
{
	switch(choose)
	{
		case 1:
			alert('很棒，就給你十個翻蓋棺材吧~');
			return false;
		break;

		case 2:
			alert('不錯不錯，咱這有十個滑蓋棺材，都給你吧~');
			return false;
		break;

		case 3:
			alert('很誠實，所以兩種都送你吧~ > u O');
			return false;
		break;
	}
}

function put()
{
	if(count <= 5)
	{
		window.alert('誰准你戳我了(咬');
	}
	if(count > 5 && count <= 10)
	{
		window.alert('再戳啊！你在戳啊！再戳讓你電腦盪死ヽ(`Д´)ﾉ');
	}
	if(count > 10)
	{
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		window.alert('┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻');
		// window.alert('再見→ _ →');
		document.location.href="http://www.google.com";
	}
	count++;
	return false;
}

function stop()
{
	if(count < 2) window.alert("嗨~你好O V O");
	if(count >= 2)
	{
		alert("88 ´⊙ω⊙`");
		window.open('', '_self', '');
		window.close();
	}
	count++;
}

//頁尾抽抽樂
function fate()
{
	var num = Math.random() * 90;
	if(num <= 10)
	{
		$.fool('fallingScrollbar');
	}
	if(num > 10 && num <= 20)
	{
		$.fool('flash');
	}
	if(num > 20 && num <= 30)
	{
		$.fool('wonky');
	}
	if(num > 30 && num <= 40)
	{
		$.fool('shutter');
	}
	if(num > 40 && num <= 50)
	{
		$.fool('questionTime');
	}
	if(num > 50 && num <= 60)
	{
		$.fool('upsideDown');
	}
	if(num > 60 && num <= 70)
	{
		$.fool('vanishingElements');
	}
	if(num > 70 && num <= 80)
	{
		$.fool('shake');
	}
	if(num > 80 && num <= 90)
	{
		$.fool('flash_red');
	}
	// alert(num);

}

// unclickable: true,		//不可點擊
// fallingScrollbar: true,	//滾軸消失
// flash:true,				//不停閃爍
// wonky: true,				//頁面歪斜
// h4xx0r: true,			//整頁可編輯
// rick: true,				//背景撥放音樂，目前測試失敗
// shutter: true,			//整頁變黑，首頁有層次 不能用
// questionTime: true,		//惡質問句
// crashAndBurn: true,		//執行此程式3600^3600次
// upsideDown: true,		//整頁翻轉顛倒
// vanishingElements: true, //隨機隱藏所碰到的元素
// hiddenVideos: true,		//奇怪音樂www

//shake: true				//自行新增，上下震動
//flash_red: true			//自行新增，背景被紅
