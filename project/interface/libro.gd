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
	cap_2.disabled = not Global.items_level[1][6]
	cap_3.disabled = not Global.items_level[2][6]
	cap_4.disabled = not Global.items_level[3][6]
	cap_5.disabled = not Global.items_level[4][6]
	cap_6.disabled = not Global.items_level[5][6]

func _on_button_pressed():
	get_tree().change_scene_to_file("res://niveles/intro.tscn")

func _on_cap_1_pressed():
	Global.current_level = 1
	get_tree().change_scene_to_file("res://niveles/nivel_1/Level.tscn")
	
func _on_cap_2_pressed():
	Global.current_level = 2
	get_tree().change_scene_to_file("res://niveles/nivel_1/Level.tscn")

func _on_cap_3_pressed():
	Global.current_level = 3
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

