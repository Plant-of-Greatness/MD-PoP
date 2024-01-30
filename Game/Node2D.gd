extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	position.y = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_credits_pressed():
	position.y = 648
