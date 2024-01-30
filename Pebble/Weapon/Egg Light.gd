extends Node2D

func _ready():
	pass

func _process(delta):
	if get_parent().kill == 1:
		hide()
