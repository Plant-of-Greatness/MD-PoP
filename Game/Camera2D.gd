extends Camera2D

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta):
	if global.boss == 1:
		zoom.x = lerp(zoom.x, 4.0, 0.02)
		zoom.y = lerp(zoom.y, 4.0, 0.02)

