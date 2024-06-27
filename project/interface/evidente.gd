extends Node2D
class_name Intro

var levelAJugar: PackedScene = preload("res://interface/evidente.tscn")

@onready var anim = $"e-vidente/AnimatedSprite2D"
@onready var background = $Background

func _ready():
	anim.play("intro")
	background.play()

func _on_go_pressed():
	get_tree().change_scene_to_file("res://niveles/intro.tscn")
