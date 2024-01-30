extends CharacterBody2D

var springtails : int
var kill = 0

@onready var node = get_node("/root/Node2D/Pebble")
func _ready():
	position = node.position

func _process(delta):
	if kill == 1:
		spawn_springtail()

@export var springtail = preload("res://Pebble/Weapon/springtail.tscn")

func spawn_springtail():
	var springtail_instance = springtail.instantiate()
	add_sibling(springtail_instance)
	springtails += 1

	queue_free()
