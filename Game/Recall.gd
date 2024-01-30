extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	text = ""


# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta):
	if Input.is_action_pressed("dash") and global.weapon == 3:
		text = "Shift to Recall your Springtails"
