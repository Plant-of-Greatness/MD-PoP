extends CanvasLayer

func _ready():
	pass

@warning_ignore("unused_parameter")
func _process(delta):
	if global.hp > -1:
		hide()
	else:
		show()
