extends TextureButton

@onready var timer = $Timer

func _ready():
	timer.timeout.connect(_on_Timer_timeout)
	timer.wait_time = 0.8

func _pressed():
	if global.cur_weap == "Scraper":
		timer.start()
		get_child(0).playing = true
	elif not global.cur_weap == "Scraper":
		global.new_file()
		get_tree().change_scene_to_file("res://Game/level.tscn")

@warning_ignore("unused_parameter")
func _process(delta):
	if global.cur_weap == "":
		disabled = true
	else:
		disabled = false

func _on_Timer_timeout():
	global.new_file()
	get_tree().change_scene_to_file("res://Game/level.tscn")
