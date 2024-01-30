extends AnimatedSprite2D

@onready var node = get_parent()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta):
	if global.pause == 0:
		play()
		if node.velocity.x < 0:
			flip_h = true
		else:
			flip_h = false
	else:
		pause()
