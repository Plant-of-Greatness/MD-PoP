extends TextureButton

func _pressed():
	get_node("/root/Main Menu/Director").position.x = 0
	get_node("/root/Main Menu/Director").position.y = 0
	global.cur_weap = ""
