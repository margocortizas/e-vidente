extends Node2D

var levelAJugar: PackedScene = preload("res://Level.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_pressed():
	get_tree().change_scene_to_file("res://Level.tscn")


func _on_options_pressed():
	pass


func _on_capitulos_pressed():
	get_tree().change_scene_to_file("res://libro.tscn")
