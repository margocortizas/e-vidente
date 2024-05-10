extends Node
class_name Level

@onready var realizado = $Logros/Realizado
@onready var no_realizado = $Logros/NoRealizado
@onready var victory = $Victory
@onready var adelante = $Adelante
@onready var ensenanza = $Ensenanza

signal return_requested()
# Reinicia el nivel
signal restart_requested()
# Inicia el siguiente nivel
signal next_level_requested()

var is_dragging = false

func _ready():
	victory.hide()
	adelante.disabled = true

func _on_atrás_pressed():
	get_tree().change_scene_to_file("res://intro.tscn")

func _victory():
	victory.show()

func _on_adelante_pressed():
	print("Ganaste!")
