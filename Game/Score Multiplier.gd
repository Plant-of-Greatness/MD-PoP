extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	text = ""


# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta):
	if not global.score > 8000:
		@warning_ignore("integer_division")
		global.dmg = global.dmg * ((global.score / 2000) + 1)
	else:
		@warning_ignore("integer_division")
		global.dmg = global.dmg * ((8000 / 2000) + 1)
	if global.score >= 0:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=ffffff]1.0*[/color][/font_size][/font]"
	if global.score >= 200:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=ffffff]1.1*[/color][/font_size][/font]"
	if global.score >= 400:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=e8faf9]1.2*[/color][/font_size][/font]"
	if global.score >= 600:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=d2f6f3]1.3*[/color][/font_size][/font]"
	if global.score >= 800:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=bcf2ee]1.4*[/color][/font_size][/font]"
	if global.score >= 1000:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=a5eee8]1.5*[/color][/font_size][/font]"
	if global.score >= 1200:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=8feae3]1.6*[/color][/font_size][/font]"
	if global.score >= 1400:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=79e6dd]1.7*[/color][/font_size][/font]"
	if global.score >= 1600:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=62e2d7]1.8*[/color][/font_size][/font]"
	if global.score >= 1800:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=62e2d7]1.9*[/color][/font_size][/font]"
	if global.score >= 2000:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=62e2d7]2.0*[/color][/font_size][/font]"
	if global.score >= 2200:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=20d6c7]2.1*[/color][/font_size][/font]"
	if global.score >= 2400:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=1ed0b7]2.2*[/color][/font_size][/font]"
	if global.score >= 2600:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=1dcba8]2.3*[/color][/font_size][/font]"
	if global.score >= 2800:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=1cc599]2.4*[/color][/font_size][/font]"
	if global.score >= 3000:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=1bc089]2.5*[/color][/font_size][/font]"
	if global.score >= 3200:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=1abb7a]2.6*[/color][/font_size][/font]"
	if global.score >= 3400:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=18b56b]2.7*[/color][/font_size][/font]"
	if global.score >= 3600:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=17b05b]2.8*[/color][/font_size][/font]"
	if global.score >= 3800:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=14a02e]2.9*[/color][/font_size][/font]"
	if global.score >= 4000:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=15a53d]3.0*[/color][/font_size][/font]"
	if global.score >= 4200:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=21a530]3.1*[/color][/font_size][/font]"
	if global.score >= 4400:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=2fab32]3.2*[/color][/font_size][/font]"
	if global.score >= 4600:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=2fab32]3.3*[/color][/font_size][/font]"
	if global.score >= 4800:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=4ab736]3.4*[/color][/font_size][/font]"
	if global.score >= 5000:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=58bd38]3.5*[/color][/font_size][/font]"
	if global.score >= 5200:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=65c33a]3.6*[/color][/font_size][/font]"
	if global.score >= 5400:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=80cf3e]3.7*[/color][/font_size][/font]"
	if global.score >= 5600:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=80cf3e]3.8*[/color][/font_size][/font]"
	if global.score >= 5800:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=80cf3e]3.9*[/color][/font_size][/font]"
	if global.score >= 6000:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=8ed540]4.0*[/color][/font_size][/font]"
	if global.score >= 6200:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=8ed540]4.1*[/color][/font_size][/font]"
	if global.score >= 6400:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=92c03d]4.2*[/color][/font_size][/font]"
	if global.score >= 6600:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=96ac3b]4.3*[/color][/font_size][/font]"
	if global.score >= 6800:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=9a9838]4.4*[/color][/font_size][/font]"
	if global.score >= 7000:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=9e8436]4.5*[/color][/font_size][/font]"
	if global.score >= 7200:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=a37033]4.6*[/color][/font_size][/font]"
	if global.score >= 7400:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=a75c31]4.7*[/color][/font_size][/font]"
	if global.score >= 7600:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=ab482e]4.8*[/color][/font_size][/font]"
	if global.score >= 7800:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=af342c]4.9*[/color][/font_size][/font]"
	if global.score >= 7900:
		text = "[font=res://PixelPebble.ttf][font_size=96][color=b4202a]5.0*[/color][/font_size][/font]"
