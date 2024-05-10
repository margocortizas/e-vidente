extends Node
class_name Level

@onready var realizado = $Logros/Realizado
@onready var no_realizado = $Logros/NoRealizado
@onready var victory = $Victory
@onready var adelante = $Adelante
@onready var ensenanza = $Ensenanza
var is_dragging = false

signal return_requested()
signal restart_requested()
signal next_level_requested()

func _ready():
	victory.hide()
	adelante.disabled = true

func _on_atrás_pressed():
	get_tree().change_scene_to_file("res://intro.tscn")

func _victory():
	victory.show()

func _on_adelante_pressed():
	print("Ganaste!")
