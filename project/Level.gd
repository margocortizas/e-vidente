extends Node
class_name Level

signal return_requested()
# Reinicia el nivel
signal restart_requested()
# Inicia el siguiente nivel
signal next_level_requested()

var is_dragging = false

func _process(delta):
	pass

func _on_atrás_pressed():
	get_tree().change_scene_to_file("res://intro.tscn")

