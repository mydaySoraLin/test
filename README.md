<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="layout.css" type="text/css">
	<script src="js_function.js"></script>

	<title>首頁</title>
	<style>
		button
		{
			margin-top: 5px;
		}
		article p
		{
			padding: 5px;
			font-size: 20px;
		}
		#side_right a
		{
			text-decoration: none;
		}
	</style>
</head>

<body data-spy="scroll">
	<!-- 上方選單 -->
	<div id="header">
		<h2 class="display-5">
			<a id="index" href="index.html">Welcome To My Website</a>
		</h2>
		<ul class="nav nav-tabs justify-content-end">
			<li class="nav-item">
				<a class="nav-link active" href="#" role="button" onclick="meow()">|ΦωΦ)></a>
			</li>
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">點我ヽ( ° ▽ °)ノ</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#" onclick="lying_1()">σ ` ▽ ´ ) σ</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#" onclick="lying_2()">(ㄏ￣▽￣)ㄏ</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#" onclick="lying_3()">¯\_( ツ )_/¯</a>
				</div>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="out_link.php">Link ٩(๑> ₃ <)۶</a>
			</li>
			<input id="search" class="form-control" type="text" placeholder="Search" />
			<button id="btn-search" class="btn btn-success my-2 my-sm-0" onclick="search()">Search</button>
		</ul>
	</div>
	<!-- 左邊選單 -->
	<div class="container" id="side_left">
		<dl>
			<dt><a href="index.html">首&emsp;&emsp;頁</a></dt>
			<dt><a href="init.html">網站起源</a></dt>
			<dt><a href="info.html">自我介紹</a></dt>
			<dt><a href="out_link.html">外部連結</a></dt>
		</dl>
		<div id="dis"><a id="dis_a" target="_blank" href="http://www.w3schools.com/html/">按按鈕後我會消失</a><br /></div>
		<div><a id="second_floor" href="http://www.w3schools.com/css/">快按按鈕，樓上就不見了</a><br /></div>
		<button id="change" class="btn btn-primary" data-trigger="hover">Try It ! >uO</button>
	</div>
	<!-- 右邊影片區 -->
	<div class="container" id="side_right">
		<article class="container-fluid">
			<!-- 影片連結 -->
			<iframe width="500" height="315" src="https://youtube.com/embed/Bp7coAgtsz0" frameborder="0"></iframe>
			<h4>
				Vol. 6 Epic Legendary Intense Massive Heroic Vengeful Dramatic Music Mix
			</h4>
			<hr>
			<p>
				This is one of my favority music.<br/>
				It was made by <a href="https://www.youtube.com/channel/UCigSgBzRaVs1xGuCEEwzuZA">
								   <strong>Versus Music Official</strong>
							   </a><br/>
				If you interest that, please spend some time to enjoy it.<br/>
			</p>
		</article>
	</div>
	<!-- 底部 -->
	<div id="footer">
		<footer class="container-fluid">
			<div class="row justify-content-between">
				<p class="col-sm-2">made by Sora_lin</p>
				<ul class="col-sm-8">
					<li class="col-sm-1">
						<a href="https://twitter.com/"><img src="https://image.flaticon.com/icons/png/128/145/145812.png"></a>
					</li>
					<li class="col-sm-1">
						<a href="https://facebook.com"><img src="https://image.flaticon.com/icons/png/128/145/145802.png"></a>
					</li>
					<li class="col-sm-1">
						<a href="https://www.instagram.com/"><img src="https://image.flaticon.com/icons/png/128/145/145805.png"></a>
					</li>
					<li class="col-sm-1">
						<a href="https://www.flickr.com/"><img src="https://image.flaticon.com/icons/png/128/145/145803.png"></a>
					</li>
		      	</ul>
			</div>
		</footer>
	</div>
</body>
</html>


<script>
$(document).ready(function()
{
	change = $("#change");
	second_floor = $("#second_floor");
	dis_a = $("#dis_a");

// 	// change.popover({
// 	// 	title: "(ㆆᴗㆆ)",
// 	// 	content: "有人要消失囉~~~",
// 	// 	placement: "right"
// 	// });

	change.click(function()
	{
		$("#dis").toggle();

		if(change.text() == "Try It ! >uO")
		{
			second_floor.html("它消失了(・∀・)");
			change.html("消失了OWO");
		}
		else if(change.text() == "消失了OWO")
		{
			second_floor.html("再讓它消失一次吧XD");
			dis_a.html("Q__Q");
			change.html("Try It Again! ლ(◉◞౪◟◉ )ლ");
		}
		else if(change.text() == "Try It Again! ლ(◉◞౪◟◉ )ლ")
		{
			second_floor.html("嘻(・∀・)");
			change.html("消失了OWO");
		}
	});

});
</script>
