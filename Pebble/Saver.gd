#ref: Red(el), Redel, Cam Check.gd
#ref: HZH;GW, Ragevenger, sightline.gd
extends Area2D

@onready var node = get_parent()

var zoom_speed = 1.5

@warning_ignore("unused_parameter")
func _process(delta):
	var bodies = get_overlapping_areas()
	for body in bodies:
		if body.name == "Save Point":
			global.x = node.position.x
			global.y = node.position.y
