extends AnimatedSprite2D

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta):
	if global.pause == 0:
		var hp = global.hp
		if Input.is_action_pressed("down") or Input.is_action_pressed("left") or Input.is_action_pressed("right") or Input.is_action_pressed("up"):
				play("default")
		else:
			pause()
		if Input.is_action_pressed("left"):
			flip_h = true
		elif Input.is_action_pressed("right"):
			flip_h = false
		if hp == 5:
			if frame >= 2:
				frame = 0
		if hp == 4:
			if frame >= 4:
				frame = 2
		if hp == 3:
			if frame >= 6:
				frame = 4
		if hp == 2:
			if frame >= 8:
				frame = 6
		if hp == 1:
			if frame >= 10:
				frame = 8
		if hp == 0:
			if frame >= 12:
				frame = 10
		if global.hit == true:
			if frame < 12:
				frame = 12
	else:
		pause()
