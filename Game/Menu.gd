extends TextureButton

func _pressed():
	get_tree().change_scene_to_file("res://Main Menu.tscn")
	global.pause = 0
