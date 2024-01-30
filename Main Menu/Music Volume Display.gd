extends Label

var bus_index = AudioServer.get_bus_index("Music")
@onready var master_value = get_node("/root/Main Menu/Master Volume/Master Volume Slider").value

func _ready():
	pass

func _process(delta):
	text = str(get_parent().value)
	AudioServer.set_bus_volume_db(bus_index, get_parent().value)
	get_parent().value = get_parent().value - master_value
