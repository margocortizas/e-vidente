extends Area2D
class_name Plato 

@onready var player_cambiante = $"../PlayerCambiante"
@onready var bien = $Bien
@onready var mal = $Mal

var elementos : Array[LevelItem.Condicion]
var cantAlimentos = 0

func _ready():
	pass
	
func _on_area_2d_area_entered(area):
	var item_level = area.get_parent()
	
	
	
func _react_food(item):
	player_cambiante.item_en_plato(item)
	cantAlimentos = cantAlimentos + 1
	if  item.esPositivo:
		bien.play()
	else: 
		mal.play()

func _on_area_2d_area_exited(area):
	var item_level = area.get_parent()
	player_cambiante.item_sale_plato(item_level)
	cantAlimentos -= 1
