extends CharacterBody2D

const SPEED = 5
const FRICTION = 0.9
@onready var DashTimer = $DashTimer
@onready var timer = $Timer
var dash = 0

func _ready():
	position.x = global.x
	position.y = global.y
	DashTimer.timeout.connect(_on_DashTimer_timeout)
	DashTimer.wait_time = 0.8

func _physics_process(_delta):
	if Input.is_action_just_pressed("pause") and global.pause == 0:
		global.pause = 1
	elif Input.is_action_just_pressed("pause") and global.pause == 1:
		global.pause = 0
	if global.pause == 0:
		if Input.is_action_pressed("left"):
			velocity.x -= SPEED
		if Input.is_action_pressed("up"):
			velocity.y -= SPEED
		if Input.is_action_pressed("right"):
			velocity.x += SPEED
		if Input.is_action_pressed("down"):
			velocity.y += SPEED
		clamp(velocity.x, -75.0, 75.0)
		clamp(velocity.y, -75.0, 75.0)
		velocity.x *= FRICTION
		velocity.y *= FRICTION
		if Input.is_action_just_pressed("dash") and dash == 0:
			global.dodge = 1
			if global.mp > 0 and global.mp < 5:
				global.mp += 1
			elif global.mp < 1:
				global.mp -= 1
			if velocity.x > 5:
				velocity.x += 150
				dash = 1
			if velocity.x < -5:
				velocity.x -= 150
				dash = 1
			if velocity.y > 5:
				velocity.y += 150
				dash = 1
			if velocity.y < -5:
				velocity.y -= 150
				dash = 1
			DashTimer.start()
		if Input.is_action_just_pressed("attack"):
			if global.weapon == 1:
				pass
			if global.weapon == 2:
				if global.mp > 0:
					spawn_fireball()
					global.mp -= 1
			if global.weapon == 3:
				if global.sp > 0:
					spawn_egg()
					global.sp -= 1
		move_and_slide()
	#if Input.is_key_pressed(KEY_T):
	#	position = get_global_mouse_position()
	if global.hp < 0:
		global.pause = 1

func _on_DashTimer_timeout():
	global.dodge = 0
	dash = 0

@export var fireball = preload("res://Pebble/fireball.tscn")

func spawn_fireball():
	var fireball_instance = fireball.instantiate()
	add_sibling(fireball_instance)

@export var egg = preload("res://Pebble/Weapon/springtail.tscn")

func spawn_egg():
	var egg_insance = egg.instantiate()
	add_sibling(egg_insance)
