extends Area2D

func _ready():
	monitoring = true
	connect("body_entered", _on_body_entered)

func _on_body_entered(body):
	if body.is_in_group("moss") and get_parent().wait == 0:
		global.dmg = 50
		body.hit = 1
		get_parent().kill = 1
		if global.hp > 5:
			global.hp += 1
