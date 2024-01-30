extends CanvasLayer

@warning_ignore("unused_parameter")
func _process(delta):
	if global.pause == 1:
		show()
	else:
		hide()
