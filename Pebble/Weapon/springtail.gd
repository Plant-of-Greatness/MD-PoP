extends CharacterBody2D

var wait
var kill = 0
@onready var node = get_node("/root/Node2D/Pebble")
var hunt

func _ready():
	global_position.x = node.position.x
	global_position.y = node.position.y

func _process(_delta):
	if global.pause == 0:
		if Input.is_action_just_pressed("reset"):
			kill = 1
		if kill == 1:
			global.sp += 1
			kill = 0
			queue_free()
		if hunt == 1 and not get_node("Moss Check").body == null:
			var moss = get_node("Moss Check").body
			if global_position.x > moss.position.x:
				velocity.x -= 1
			if global_position.x < moss.position.x:
				velocity.x += 1
			if global_position.y > moss.position.y:
				velocity.y -= 1
			if global_position.y < moss.position.y:
				velocity.y += 1
		elif hunt == 0:
			if global_position.distance_to(node.position) > 15:
				if global_position.x > node.position.x:
					velocity.x -= 1
				if global_position.x < node.position.x:
					velocity.x += 1
				if global_position.y > node.position.y:
					velocity.y -= 1
				if global_position.y < node.position.y:
					velocity.y += 1
			elif global_position.distance_to(node.position) < 15:
				if global_position.x > node.position.x:
					velocity.x += 1
				if global_position.x < node.position.x:
					velocity.x -= 1
				if global_position.y > node.position.y:
					velocity.y += 1
				if global_position.y < node.position.y:
					velocity.y -= 1
			elif global_position.distance_to(node.position) > 100:
				global_position.x = node.position.x
				global_position.y = node.position.y

		clamp(velocity.x, -30, 30)
		clamp(velocity.y, -30, 30)
		move_and_slide()

