extends Area2D
class_name Plato

@onready var player_cambiante = $"../PlayerCambiante"
@onready var bien = $Bien
@onready var mal = $Mal

var elementos : Array[LevelItem.Condicion]
var cantAlimentosPos = {}
var cantAlimentosNeg = {}

func _react_food(item):
	if  item.esPositivo:
		cantAlimentosPos[item] = null
		bien.play()
	else:
		cantAlimentosNeg[item] = null
		mal.play()
	player_cambiante.item_en_plato(item)

func _on_area_2d_area_exited(area):
	var item_level = area.get_parent()
	if item_level.esPositivo:
		cantAlimentosPos.erase(item_level)
	else:
		cantAlimentosNeg.erase(item_level)
	player_cambiante.item_sale_plato(item_level)
