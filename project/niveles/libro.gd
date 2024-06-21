extends Node2D


func _on_button_pressed():
	get_tree().change_scene_to_file("res://niveles/nivel_1/Level.tscn")

func _on_cap_1_pressed():
	Global.current_level = 1
	get_tree().change_scene_to_file("res://niveles/nivel_1/Level.tscn")
	
func _on_cap_2_pressed():
	Global.current_level = 2
	get_tree().change_scene_to_file("res://niveles/nivel_1/Level.tscn")

func _on_cap_3_pressed():
	Global.current_level = 3
	get_tree().change_scene_to_file("res://niveles/nivel_1/Level.tscn")

func _on_cap_4_pressed():
	get_tree().change_scene_to_file("res://niveles/nivel_1/Level.tscn")

func _on_cap_5_pressed():
	get_tree().change_scene_to_file("res://niveles/nivel_1/Level.tscn")
