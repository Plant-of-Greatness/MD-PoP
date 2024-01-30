extends Label

var bus_index = AudioServer.get_bus_index("Master")

func _ready():
	pass

@warning_ignore("unused_parameter")
func _process(delta):
	text = str(get_parent().value / 4)
	AudioServer.set_bus_volume_db(bus_index, get_parent().value - 10)
