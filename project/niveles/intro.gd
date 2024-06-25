extends Node2D

func _on_start_pressed():
	get_tree().change_scene_to_file("res://interface/archivero.tscn")

func _on_options_pressed():
	pass
	#TODO cuando tengamos opciones -sonidos, musica, accesibilidad

func _on_capitulos_pressed():
	get_tree().change_scene_to_file("res://niveles/libro.tscn")

func _on_salir_pressed():
	get_tree().quit()
