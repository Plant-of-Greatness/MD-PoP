extends Node

var end 
var boss_hp = 16
var boss : int
var score : int
var sp : int
var dir : int
var cur_weap : String
var pause : int
var hp : int
var mp : int
var hit : bool
var weapon : int
var x : float
var y : float
var dmg : float
var dodge : int

var save_path = "user://save.txt"
func save():
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_var(hp)
	file.store_var(mp)
	file.store_var(weapon)
	file.store_var(x)
	file.store_var(y)

func new_file():
	end = 0
	boss = 0
	boss_hp = 16
	hp = 5
	mp = 5
	sp = 5
	score = 0
	if cur_weap == "Scraper":
		weapon = 1
	elif cur_weap == "Fireball":
		weapon = 2
	elif cur_weap == "Egg":
		weapon = 3
	x = 70
	y = 30
	save()

func load_data():
	if FileAccess.file_exists(save_path):
		var file = FileAccess.open(save_path, FileAccess.READ)
		hp = file.get_var(hp)
		mp = file.get_var(mp)
		weapon = file.get_var(weapon)
		x = file.get_var(x)
		y = file.get_var(y)


func on_timerTimeout():
	mp += 5
