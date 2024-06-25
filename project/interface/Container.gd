extends Container
class_name ARCHIVERO_NIVELES

@onready var archivero = preload("res://interface/containerHolder.tscn")
@export var file : String 

var start_position
var archive_highlighted = false

func _on_mouse_entered():
	$Anim.play("select")
	archive_highlighted = true

func _on_mouse_exited():
	$Anim.play("deselect")
	archive_highlighted = false


func _on_gui_input(event):
	if (event is InputEventMouseButton) and (event.button_index == 1):
		if event.button_mask == 1:
			if archive_highlighted: 
				var archive_temp = archivero.instantiate()
				archive_highlighted = true
				get_tree().change_scene_to_file(file)
		elif event.button_mask == 0:
			pass
