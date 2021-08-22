extends Area2D

func _on_Spiketop_body_entered(_body):
	get_tree().call_group("Gamestate", "hurt")

func _on_Spikeman_body_entered(_body):
	get_tree().call_group("Gamestate", "hurt")
