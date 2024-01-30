extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Camera2D.position_smoothing_enabled = false
	position.y = 0
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta):
	$Camera2D.position_smoothing_enabled = true
	if (Input.is_action_just_pressed("dash") and position.y == 576) or Input.is_action_just_pressed("attack"):
		get_tree().change_scene_to_file("res://Main Menu.tscn")
	elif Input.is_action_just_pressed("dash"):
		position.y += 144
