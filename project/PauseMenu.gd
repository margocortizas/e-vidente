extends Control

signal return_selected()

func _ready():
	hide()

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_released("pause_menu"):
		visible = !visible

func _on_return_button_pressed():
	hide()
	get_tree().change_scene_to_file("res://intro.tscn")

func _on_resume_button_pressed():
	hide()
	get_tree().paused = false
	print("Resume button pressed")
