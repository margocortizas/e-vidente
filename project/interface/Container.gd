extends Container

@onready var archivero = preload("res://interface/containerHolder.tscn")
@export var sprite : Sprite2D
@onready var archivero_celiaco = $"Archivero-Celiaco"

var start_position
var archive_highlighted = false
func _ready():
	archivero_celiaco.texture = sprite
	
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
				get_tree().get_root().get_node("interface/archivero/containter/conteinerHolder").add_child(archive_temp)
				archive_highlighted = true
		elif event.button_mask == 0:
			pass
