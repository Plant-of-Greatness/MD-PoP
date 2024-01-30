extends AnimatedSprite2D

var loop = 1

func _ready():
	play()
	frame = 0

func _process(delta):
	if frame == 11:
		loop += 1
	if loop == 3:
		get_parent().kill = 1
		hide()
