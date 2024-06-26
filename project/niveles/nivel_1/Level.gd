extends Node
class_name Level

@onready var background = $Background
@onready var victory = $Victory
@onready var adelante = $Adelante
@onready var ensenanza = $Ensenanza
@onready var meal = $"Globo texto/Meal"
@onready var abstract_condition = $"Globo texto/Condition"
@onready var manager_level = $ManagerLevel

var is_dragging = false

func _ready():
	victory.hide()
	adelante.disabled = true
	background.play()
	manager_level.setup(self)
	

func _on_atrás_pressed():
	get_tree().change_scene_to_file("res://niveles/intro.tscn")

func _victory():
	victory.show()
	victory.play("victory")
	adelante.disabled = false
	ensenanza.show()

func _on_adelante_pressed():
	if Global.current_level >= 6: 
		get_tree().change_scene_to_file("res://niveles/intro.tscn")
	else: Global.current_level += 1
	get_tree().change_scene_to_file("res://niveles/nivel_1/Level.tscn")
#Acá hay que mejorar esto porque no funca bien!
