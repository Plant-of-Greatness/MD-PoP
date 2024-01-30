extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta):
	if global.pause == 1:
		hide()
	else:
		show()
	if global.score < 10:
		text = "000000000" + str(global.score)
	elif global.score < 100:
		text = "00000000" + str(global.score)
	elif global.score < 1000:
		text = "0000000" + str(global.score)
	elif global.score < 10000:
		text = "000000" + str(global.score)
	elif global.score < 100000:
		text = "00000" + str(global.score)
	elif global.score < 1000000:
		text = "0000" + str(global.score)
	elif global.score < 10000000:
		text = "000" + str(global.score)
	elif global.score < 100000000:
		text = "00" + str(global.score)
	elif global.score < 1000000000:
		text = "0" + str(global.score)
	else:
		text = str(global.score)


func _on_timer_timeout():
	if global.pause == 0:
		if global.score > 0:
			global.score -= 1
		$Timer.start()
