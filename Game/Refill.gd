extends AnimatedSprite2D

func _ready():
	if global.weapon == 2 or global.weapon == 3:
		show()
	else:
		hide()

@warning_ignore("unused_parameter")
func _process(delta):
	if global.weapon == 2:
		frame = global.mp + 5
		if global.mp <= -5:
			global.mp = 5
	if global.weapon == 3:
		frame = global.sp + 5
		if global.sp <= -5:
			global.sp = 5
