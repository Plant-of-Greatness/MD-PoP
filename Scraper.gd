extends CharacterBody2D

@onready var node = get_node("/root/Node2D/Pebble")

func _ready():
	if global.weapon == 1:
		show()
	else:
		queue_free()

@warning_ignore("unused_parameter")
func _process(delta):
	if Input.is_action_pressed("up"):
		rotation = -0.785398
	if Input.is_action_pressed("right"):
		rotation = 0.785398
	if Input.is_action_pressed("down"):
		rotation = 2.35619
	if Input.is_action_pressed("left"):
		rotation = 3.92699
	if Input.is_action_pressed("left") and Input.is_action_pressed("down"):
		rotation = 3.14159
	if Input.is_action_pressed("right") and Input.is_action_pressed("down"):
		rotation = 1.5708
	if Input.is_action_pressed("left") and Input.is_action_pressed("up"):
		rotation = 4.71239
	if Input.is_action_pressed("right") and Input.is_action_pressed("up"):
		rotation = 0
	if Input.is_action_just_pressed("attack"):
		if Input.is_action_pressed("up"):
			get_parent().velocity.y -= 25
		if Input.is_action_pressed("right"):
			get_parent().velocity.x += 25
		if Input.is_action_pressed("down"):
			get_parent().velocity.y += 25
		if Input.is_action_pressed("left"):
			get_parent().velocity.x -= 25
	if abs(velocity.x) < 25:
		position.x = lerp(position.x, 0.0, 0.25)
		velocity.x = 0
	if abs(velocity.y) < 25:
		position.y = lerp(position.y, 0.0, 0.25)
		velocity.y = 0

	if abs(node.velocity.y) > abs(node.velocity.x):
		global.dmg = abs(node.velocity.y)
	else:
		global.dmg = abs(node.velocity.x)
	
	velocity /= 1.1
	move_and_slide()
