extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	frame = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if global.end == 1:
		play("default")
	if frame == 9:
		get_tree().change_scene_to_file("res://Game/End Screen.tscn")
