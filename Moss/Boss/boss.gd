extends CharacterBody2D

var hit
var phase
var speed
var move
@onready var player = get_node("/root/Node2D/Pebble")

func _ready():
	#phase = randi_range(1, 3)
	phase = 2

@warning_ignore("unused_parameter")
func _process(delta):
	if global.pause == 0 and global.boss == 1:
		if hit == 1:
			if global.weapon == 1:
				if Input.is_action_pressed("down"):
					velocity.y += 100
				if Input.is_action_pressed("up"):
					velocity.y -= 100
				if Input.is_action_pressed("left"):
					velocity.x -= 100
				if Input.is_action_pressed("right"):
					velocity.x += 100
			hit = 0
			var temp = randi_range(1, 4)
			if temp == 4:
				if global.hp < 5:
					global.hp += 1
			if global.score > 8000:
				global.boss_hp -= 0.5
			else:
				global.boss_hp -= 0.25
		if global.boss_hp < 0.25:
			queue_free()
			global.end = 1
		if phase == 1:
			$Frames.play("mage")
		if phase == 2:
			$Frames.play("melee")
			if player.position.x > position.x and abs(velocity.x) < 5:
				velocity.x += 100
			if player.position.x < position.x and abs(velocity.x) < 5:
				velocity.x -= 100
			if player.position.y > position.y and abs(velocity.y) < 5:
				velocity.y += 100
			if player.position.y < position.y and abs(velocity.y) < 5:
				velocity.y -= 100
			if Input.is_action_just_pressed("dash"):
				velocity *= 2
		if phase == 3:
			$SpawnTimer.start()
			$Frames.play("summon")
		move_and_slide()
		velocity *= 0.9

@export var moss = preload("res://Moss/Lil/moss.tscn")

func spawn_moss():
	var moss_instance = moss.instantiate()
	add_sibling(moss_instance)

#func spawn_bullet():
#	pass


#func _on_spawn_timer_timeout():
#	spawn_moss()
