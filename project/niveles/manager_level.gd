extends Node
class_name ManagerLevel

@export var level_resource : LevelResource
var posicion:Vector2
@onready var plato = %Plato

func _ready():
	posicion = Vector2(333,624)
	for c in level_resource.cantidadPositivos:
		var level_item = level_resource.itemsPositivos.pop_back()
		var new_item = level_item.escena.instantiate()
		new_item.setup(level_item.sprite, level_item.condiciones, plato)
		add_child(new_item)
		new_item.position = posicion
		posicion.x += 100
	for c in level_resource.cantidadNegativos:
		var level_item = level_resource.itemsNegativos.pop_at(0)
		var new_item = level_item.escena.instantiate()
		new_item.setup(level_item.sprite, level_item.condiciones, plato)
		add_child(new_item)
		new_item.position = posicion
		posicion.x += 100

