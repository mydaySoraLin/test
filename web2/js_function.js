$(document).ready(function()
{
	$("#cat").hover(
		function()
		{
			rotate_deg = Math.random() * 360;
			num = parseInt(Math.random() * 400 / 100);

			switch(num)
			{
				case 0:
					position_x = Math.random() * 50;
					position_y = Math.random() * 50;
					move = "translate(-" + position_x + "em,-" + position_y +"em)";
				break;

				case 1:
					position_x = Math.random() * 30;
					position_y = Math.random() * 30;
					move = "translate(" + position_x + "em,-" + position_y +"em)";
				break;

				case 2:
					position_x = Math.random() * 50;
					position_y = Math.random() * 30;
					move = "translate(-" + position_x + "em," + position_y +"em)";
				break;

				case 3:
					position_x = Math.random() * 30;
					position_y = Math.random() * 30;
					move = "translate(" + position_x + "em," + position_y +"em)";
				break;
			}

			move_deg = "rotate(" + rotate_deg + "deg)";
			$(this).css("transform",move +" " + move_deg);
			$(this).css("transition","1s");
		}, 
		function()
		{
			$(this).css("transform","translate(0em,0em)");
		}
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