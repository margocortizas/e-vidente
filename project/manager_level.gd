extends Node
class_name ManagerLevel

@export var level_items: Array[LevelItem]
const ARROZ = preload("res://items/arroz.tres")
const AZUCAR = preload("res://items/azucar.tres")
var posicion:Vector2


func _ready():
	posicion = Vector2(333,624)
	level_items.append(AZUCAR)
	print(level_items)
	var items_a_spawnear = tres_a_usar_condicion(LevelItem.Condicion.CELIACO)
	var items_random = tres_sin_condicion(LevelItem.Condicion.CELIACO)
	items_a_spawnear.append_array(items_random)
	for level_item in items_a_spawnear:
		var new_item = level_item.escena.instantiate()
		new_item.setup(level_item.sprite, level_item.condiciones)
		add_child(new_item)
		new_item.position = posicion
		posicion.x += 100


func tres_a_usar_condicion(condicion):
	var res = level_items.filter(
		func(item):
			return !item.condiciones.has(condicion))
	res.slice(0,2)
	return res

func tres_sin_condicion(condicion):
	var res = level_items.filter(
		func(item):
			return item.condiciones.has(condicion))
	res.slice(0,2)
	return res
