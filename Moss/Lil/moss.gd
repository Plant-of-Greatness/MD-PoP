extends CharacterBody2D

var hit
var hp = 150
var move = 1
var attack
@onready var node = get_node("/root/Node2D/Pebble")

func _ready():
	$Timer.timeout.connect(_on_Timer_timeout)

@warning_ignore("unused_parameter")
func _process(delta):
	if global.pause == 0:
		if hp < 0:
			if global.hp < 5:
				global.hp += 1
			elif global.hp == 5:
				global.score += 50
			global.score += 100
			queue_free()
		if global.dmg > 0 and hit == 1:
			#get_node("Moss Dmg").emitting = true
			velocity *= -1
			hp -= global.dmg
			global.dmg = 0
			hit = 0
			if Input.is_action_pressed("down"):
				velocity.y += 100
			if Input.is_action_pressed("up"):
				velocity.y -= 100
			if Input.is_action_pressed("left"):
				velocity.x -= 100
			if Input.is_action_pressed("right"):
				velocity.x += 100
		#if attack == 0 and move == 1:
			#move = 0
			#$Timer.start()
			#var dir = randi_range(1, 8)
			#if dir == 1:
			#	velocity.y += 50 #down
			#if dir == 2:
			#	velocity.x += 50 #left
			#	velocity.y += 50 #down
			#if dir == 3:
			#	velocity.x += 50 #left
			#if dir == 4:
			#	velocity.x += 50 #left
			#	velocity.y -= 50 #up
			#if dir == 5:
			#	velocity.y -= 50 #up
			#if dir == 6:
			#	velocity.x -= 50 #right
			#	velocity.y -= 50 #up
			#if dir == 7:
			#	velocity.x -= 50 #right
			#if dir == 8:
			#	velocity.x -= 50 #right
			#	velocity.y += 50 #down
		if attack == 1:
			if position.x > node.position.x:
				velocity.x -= 2
			if position.x < node.position.x:
				velocity.x += 2
			if position.y > node.position.y:
				velocity.y -= 2
			if position.y < node.position.y:
				velocity.y += 2
		velocity *= 0.9
		move_and_slide()
		
		var tilemap = get_node("/root/Node2D/TileMap")
		@warning_ignore("narrowing_conversion")
		var cell_position = Vector2i(position.x / 8, position.y / 8) 
		var tiledata = tilemap.get_cell_tile_data(1, cell_position)
		if not tiledata == null:
			var id = tiledata.get_custom_data("id")
			if id == 1:
				tilemap.set_cell(0, cell_position, 0, Vector2i(0, 1), 0)


func _on_Timer_timeout():
	move = 1

