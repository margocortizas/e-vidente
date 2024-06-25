extends Node2D

var start_position
var archive_highlighted = false

func _on_mouse_entered():
	$Anim.play("select")
	archive_highlighted = true

func _on_mouse_exited():
	$Anim.play("deselect")
	archive_highlighted = false


func _on_gui_input(event):
	pass # Replace with function body.
