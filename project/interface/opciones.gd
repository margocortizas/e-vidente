extends Node2D

@onready var background = $Background

func _ready():
	background.play()

func _on_atrás_pressed():
	get_tree().change_scene_to_file("res://niveles/intro.tscn")
