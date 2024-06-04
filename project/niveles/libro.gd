extends Node2D

func _on_button_pressed():
	get_tree().change_scene_to_file("res://intro.tscn")

func _on_cap_1_pressed():
	get_tree().change_scene_to_file("res://Level.tscn")
