extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta):
	get_node("CollisionShape2D").disabled = false
	var bodies = get_overlapping_bodies()
	if global.pause == 0:
		if bodies.has(get_node("/root/Node2D/Pebble")):
			get_parent().attack = 1
		else:
			get_parent().attack = 0

