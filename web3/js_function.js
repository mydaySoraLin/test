function stop(id) 
{
	var stop_id = id.toString();
	var play_id = id.toString();
	var play_count_val = $("#" + play_id + "p").val();
	var stop_count_val = $("#" + stop_id + "s").val();

	if(stop_count_val <= 0 && play_count_val <= 1)
	{
		var pjs = Processing.getInstanceById(id);
		pjs.stop();
		//計算次數
		stop_count_val++;
		$("#" + stop_id + "s").val(stop_count_val);
		$("#" + play_id + "p").val(0);
	}
}
	
function play(id) 
{
	var stop_id = id.toString();
	var play_id = id.toString();
	var play_count_val = $("#" + play_id + "p").val();
	var stop_count_val = $("#" + stop_id + "s").val();

	if(play_count_val <= 0 && stop_count_val <= 1)
	{
		var pjs = Processing.getInstanceById(id);
		pjs.playSketch(); 
		//計算次數
		play_count_val++;
		$("#" + play_id + "p").val(play_count_val);
		$("#" + stop_id + "s").val(0);
	}
}