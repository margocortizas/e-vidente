extends Node2D
class_name Intro

var levelAJugar: PackedScene = preload("res://niveles/evidente.tscn")

@onready var anim = $AnimatedSprite2D

func _ready():
	anim.play()

func _on_go_pressed():
	get_tree().change_scene_to_file("res://interface/intro.tscn")
