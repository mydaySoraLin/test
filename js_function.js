$(document).ready(function()
{
	$("#btn-search").hover(
		function()
		{
			position_x = Math.random() * 20;
			position_y = Math.random() * 20;
			rotate_deg = Math.random() * 360;
			num = Math.random();	//旋轉角度
			move = "translate(-" + position_x + "em," + position_y +"em)";
			move_deg = "rotate(" + rotate_deg + "deg)";
			$(this).html("ヽ(｡∀ﾟ)ﾉ");
			$(this).css("transform",move +" " + move_deg);
		}, 
		function()
		{
			$(this).css("transform","translate(0em,0em)");
		}
	);

	$(".col-sm-1").hover(
		function()
		{
			position_x = Math.random() * 20;
			position_y = Math.random() * 20;
			rotate_deg = Math.random() * 360;
			num = Math.random();
			move = "translate(-" + position_x + "em,-" + position_y +"em)";
			move_deg = "rotate(" + rotate_deg + "deg)";
			// $(this).html("ヽ(｡∀ﾟ)ﾉ");
			$(this).css("transform",move +" " + move_deg);
		}, 
		function()
		{
			$(this).css("transform","translate(0em,0em)");
		}
	);

});

var count = 1;

function search()
{
	var text = document.getElementById("search").value;
	if (text == "" && count <= 5)
	{
		alert("什麼都沒輸入還敢按按鈕? (ಠ_ಠ)");
	}
	else if(count > 5 && count <= 10)
	{
		alert("這麼愛我喔( Oˇд O)");
	}
	else if(count > 10 && count <= 50)
	{
		alert("還按?!!!ヽ( ` Д ´)ﾉ︵ ┻━┻");
	}
	else if(text == "" && count > 50)
	{
		alert("都按了50次還沒查半點東西，吃飽太閒嗎( = Д =)y~~");
	}
	else
	{
		alert("你以為我不知道你輸入了 「" + text + "」嗎~?\n可是這一切都只是為了騙你的>uO");
	}
	count ++;
}
// |ΦωΦ)>的彈跳視窗
function meow()
{
	alert("恭喜你你發現了一隻貓\n貓：喵喵喵喵喵喵~~<( O ω O )>");
	return false;
}
// σ ` ▽ ´ ) σ的彈跳視窗
function lying_1()
{
	alert("你被騙了~ 這裡沒東西ˊ 艸 ˋ* ");
	return false;
}
// (ㄏ￣▽￣)ㄏ的彈跳視窗
function lying_2()
{
	alert("你又被騙了www 這裡依舊沒有東西 ﾟ ∀ ﾟ) σ");
	return false;
}
// ¯\_( ツ )_/¯的彈跳視窗
function lying_3()
{
	alert("你還是被騙了...— △—\n這裡根本就沒有東西好嗎(θ _ θ)");
	return false;
}
