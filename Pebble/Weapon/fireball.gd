extends CharacterBody2D

var speed = 200
@onready var timer = $Timer
@onready var node = get_node("/root/Node2D/Pebble")

func _ready():
	position = node.position
	if Input.is_action_pressed("down"):
		velocity.y += 100 + node.velocity.y
		rotation = 3.14159
		if Input.is_action_pressed("left"):
			rotation = 3.92699 
			velocity *= 0.7
		if Input.is_action_pressed("right"):
			rotation = 2.35619
			velocity *= 0.7
	if Input.is_action_pressed("left"):
		velocity.x -= 100 - node.velocity.x
		if not (Input.is_action_pressed("down") or Input.is_action_pressed("up")):
			rotation = 4.71239
	if Input.is_action_pressed("up"):
		velocity.y -= 100 - node.velocity.y
		if Input.is_action_pressed("left"):
			rotation = 5.49779
			velocity *= 0.7
		if Input.is_action_pressed("right"):
			rotation = 2.35619
			velocity *= 0.7
	if Input.is_action_pressed("right"):
		velocity.x += 100 + node.velocity.x
		if not (Input.is_action_pressed("down") or Input.is_action_pressed("up")):
			rotation = 1.5708
	timer.timeout.connect(_on_Timer_timeout)
	if Input.is_action_pressed("down") or Input.is_action_pressed("up") or Input.is_action_pressed("left") or Input.is_action_pressed("right"):
		timer.wait_time = 0.8
	else:
		timer.wait_time = 10
	timer.start()
	if abs(node.velocity.y) > abs(node.velocity.x):
		global.dmg = abs(node.velocity.y) + 25
	else:
		global.dmg = abs(node.velocity.x) + 25

@warning_ignore("unused_parameter")
func _process(delta):
	if global.pause == 0:
		move_and_slide()

func _on_Timer_timeout():
	get_node(".").queue_free()

