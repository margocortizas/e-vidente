extends Node2D
class_name Libro

@onready var background = $Background
@onready var cap_2 = $VBoxContainer/Cap2
@onready var cap_3 = $VBoxContainer/Cap3
@onready var cap_4 = $VBoxContainer/Cap4
@onready var cap_5 = $VBoxContainer/Cap5
@onready var cap_6 = $VBoxContainer/Cap6


func _ready():
	background.play()
	cap_2.disabled = true
	cap_3.disabled = true
	cap_4.disabled = true
	cap_5.disabled = true
	cap_6.disabled = true

func _on_button_pressed():
	get_tree().change_scene_to_file("res://niveles/intro.tscn")

func _on_cap_1_pressed():
	Global.current_level = 1
	get_tree().change_scene_to_file("res://niveles/nivel_1/Level.tscn")
	
func _on_cap_2_pressed():
	Global.current_level = 2
	if Global.current_level.is_completed :
		cap_2.disabled = false
		get_tree().change_scene_to_file("res://niveles/nivel_1/Level.tscn")

func _on_cap_3_pressed():
	Global.current_level = 3
	if Global.current_level.is_completed :
		cap_3.disabled = false
		get_tree().change_scene_to_file("res://niveles/nivel_1/Level.tscn")

func _on_cap_4_pressed():
	Global.current_level = 4
	get_tree().change_scene_to_file("res://niveles/nivel_1/Level.tscn")

func _on_cap_5_pressed():
	Global.current_level = 5
	get_tree().change_scene_to_file("res://niveles/nivel_1/Level.tscn")
	
func _on_cap_6_pressed():
	Global.current_level = 6
	get_tree().change_scene_to_file("res://niveles/nivel_1/Level.tscn")

