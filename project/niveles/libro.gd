extends Node2D

func _on_button_pressed():
	get_tree().change_scene_to_file("res://niveles/intro.tscn")

func _on_cap_1_pressed():
	get_tree().change_scene_to_file("res://niveles/nivel_1/Level.tscn")
