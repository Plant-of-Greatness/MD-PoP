extends CollisionShape2D

@onready var node = get_parent()

func _ready():
	node.wait = 1
	disabled = true
	$Timer.start()

@warning_ignore("unused_parameter")
func _process(delta):
	pass

func _on_timer_timeout():
	disabled = false
	node.wait = 0
