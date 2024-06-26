extends Node2D

var levelAJugar: PackedScene = preload("res://niveles/nivel_1/Level.tscn")

func _on_start_pressed():
	get_tree().change_scene_to_file("res://interface/Libro-Vegan-GF.tscn")

func _on_capitulos_pressed():
	get_tree().change_scene_to_file("res://interface/libro.tscn")

func _on_salir_pressed():
	get_tree().quit()
