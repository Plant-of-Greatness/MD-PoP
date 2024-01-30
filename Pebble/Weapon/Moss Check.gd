extends Area2D

var body

func _ready():
	connect("area_entered", on_area_entered)

@warning_ignore("unused_parameter")
func _process(delta):
	pass

func on_area_entered(area):
	if area.is_in_group("moss check"):
		body = area
		get_parent().hunt = 1
	else:
		get_parent().hunt = 0
