extends Node
class_name ManagerLevel

@export var level_resource : LevelResource
@onready var plato = %Plato
var posicion:Vector2
var lista_items = []


func _ready():
	posicion = Vector2(250,624)
	items_aleatorios()
	lista_items.shuffle()
	for i in lista_items:
		i.position = posicion
		posicion.x += 100
	
func items_aleatorios():
	var listaPositivos = level_resource.itemsPositivos.duplicate()
	listaPositivos.shuffle()
	var listaNegativos = level_resource.itemsNegativos.duplicate()
	listaNegativos.shuffle()

	var max_valorp = level_resource.cantidadPositivos
	var max_valorn = level_resource.cantidadNegativos
	for c in level_resource.cantidadPositivos:
		var level_item = listaPositivos.pop_front()
		var new_item = level_item.escena.instantiate()
		new_item.setup(level_item.sprite, level_item.condiciones, plato, true)
		add_child(new_item)
		lista_items.append(new_item)
	for c in level_resource.cantidadNegativos:
		var level_item = listaNegativos.pop_front()
		var new_item = level_item.escena.instantiate()
		new_item.setup(level_item.sprite, level_item.condiciones, plato, false)
		add_child(new_item)
		lista_items.append(new_item)
