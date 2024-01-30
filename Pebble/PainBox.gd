extends Area2D

func _ready():
	monitoring = true
	connect("body_entered", _on_body_entered)

func _on_body_entered(body):
	if body.is_in_group("moss"):
		get_node("/root/Node2D/Pebble/CPUParticles2D").emitting = true
		global.hp -= 1
		if global.dir == 1:
			get_parent().velocity.y += 100
			body.velocity.y -= 100
		if global.dir == 2:
			get_parent().velocity.x -= 100
			body.velocity.x += 100
		if global.dir == 3:
			get_parent().velocity.y -= 100
			body.velocity.y += 100
		if global.dir == 4:
			get_parent().velocity.x += 100
			body.velocity.x -= 100


func _on_area_entered(area):
	if area.is_in_group("boss arena"):
		print("In Area")
		global.boss = 1
