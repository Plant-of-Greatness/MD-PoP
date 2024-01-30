extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	text = ""


# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta):
	if Input.is_action_pressed("left") or Input.is_action_pressed("right") or Input.is_action_pressed("down") or Input.is_action_pressed("up"):
		text = "X while Moving to Shoot"
