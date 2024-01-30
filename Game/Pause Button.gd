extends TextureButton

func _pressed():
	global.pause = 1

@warning_ignore("unused_parameter")
func _process(delta):
	if global.pause == 0:
		show()
	if global.pause == 1:
		hide()
