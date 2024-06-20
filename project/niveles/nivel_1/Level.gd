extends Node
class_name Level


@onready var background = $Background
@onready var realizado = $Logros/Realizado
@onready var no_realizado = $Logros/NoRealizado
@onready var victory = $Victory
@onready var adelante = $Adelante
@onready var ensenanza = $Ensenanza
@onready var meal = $"Globo texto/Meal"
@onready var abstract_meal = $"Globo texto/AbstractMeal"
@onready var abstract_condition = $"Globo texto/Condition"

var is_dragging = false

func _ready():
	victory.hide()
	adelante.disabled = true
	background.play()
	

func _on_atrás_pressed():
	get_tree().change_scene_to_file("res://niveles/intro.tscn")

func _victory():
	victory.show()
	victory.play("victory")
	adelante.disabled = false
	ensenanza.show()

func _on_adelante_pressed():
	get_tree().change_scene_to_file("res://niveles/libro.tscn")
