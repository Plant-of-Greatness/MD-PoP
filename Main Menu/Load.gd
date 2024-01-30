extends TextureButton

func _ready():
	if not (global.x == 0 and global.y == 0):
		disabled = false
	else:
		disabled = true

func _pressed():
	get_tree().change_scene_to_file("res://Game/level.tscn")

