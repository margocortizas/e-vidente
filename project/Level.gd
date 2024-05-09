extends Node
class_name Level
@onready var realizado = $Logros/Realizado
@onready var no_realizado = $Logros/NoRealizado
@onready var victory = $Victory
@onready var adelante = $Adelante

signal return_requested()
# Reinicia el nivel
signal restart_requested()
# Inicia el siguiente nivel
signal next_level_requested()

var is_dragging = false

func _ready():
	victory.hide()
	
	
func _process(delta):
	pass

func _on_atrás_pressed():
	get_tree().change_scene_to_file("res://intro.tscn")

func _victory():
	victory.show()
	adelante.disabled = false
	

func _on_adelante_pressed():
	print("Ganaste!")
