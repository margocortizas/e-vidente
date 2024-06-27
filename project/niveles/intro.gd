extends Node2D
@onready var background = $Background

func _ready():
	background.play()
	
func _on_start_pressed():
	get_tree().change_scene_to_file("res://interface/archivero.tscn")

func _on_opciones_pressed():
	get_tree().change_scene_to_file("res://interface/opciones.tscn")

func _on_salir_pressed():
	get_tree().quit()



