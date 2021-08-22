extends Node2D

export var lives = 3
export var coins_for_a_life = 10

var coins = 0

func _ready():
	add_to_group("Gamestate")
	update_gui()

func hurt():
	$Player.hurt()
	lives -= 1
	update_gui()
	if lives < 0:
		end_game()

func pick_coin():
	coins += 1
	if coins % coins_for_a_life == 0:
		lives += 1
	update_gui()

func update_gui():
	get_tree().call_group("GUI", "update_gui", lives, coins)

func end_game():
	get_tree().change_scene("res://Levels/GameOver.tscn")

func win_game():
	get_tree().change_scene("res://Levels/Victory.tscn")
