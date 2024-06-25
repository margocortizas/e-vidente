extends Node2D

var start_position
var archive_highlighted = false

func _on_mouse_entered():
	$Anim.play("select")
	archive_highlighted = true

func _on_mouse_exited():
	$Anim.play("deselect")
	archive_highlighted = false


func _on_atrás_pressed():
	get_tree().change_scene_to_file("res://niveles/intro.tscn")
