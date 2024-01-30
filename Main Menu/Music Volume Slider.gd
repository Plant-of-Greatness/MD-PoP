extends HSlider

func _process(delta):
	value = value + get_node("/root/Main Menu/Master Volume/Master Volume Slider").value
