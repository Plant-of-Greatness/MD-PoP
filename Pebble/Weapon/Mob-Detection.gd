extends Area2D

func _ready():
	monitoring = true
	connect("body_entered", _on_body_entered)

func _on_body_entered(body):
	if body.is_in_group("moss"):
		body.hit = 1
