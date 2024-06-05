extends Node
class_name ManagerLevel

@export var level_resource : LevelResource
@onready var plato = %Plato
var posicion:Vector2
var lista_items = []


func _ready():
	posicion = Vector2(333,624)
	items_aleatorios()
	for i in lista_items:
		i.position = posicion
		posicion.x += 100
	
func items_aleatorios():
	randomize()
	var min_valor = 0
	var max_valorp = level_resource.cantidadPositivos
	var max_valorn = level_resource.cantidadNegativos
	for c in level_resource.cantidadPositivos:
		var numero_aleatorio = randi() % (max_valorp - min_valor + 1) + min_valor
		var level_item = level_resource.itemsPositivos.pop_at(numero_aleatorio)
		var new_item = level_item.escena.instantiate()
		new_item.setup(level_item.sprite, level_item.condiciones, plato, true)
		add_child(new_item)
		lista_items.append(new_item)
	for c in level_resource.cantidadNegativos:
		var numero_aleatorio = randi() % (max_valorn - min_valor + 1) + min_valor
		var level_item = level_resource.itemsNegativos.pop_at(numero_aleatorio)
		var new_item = level_item.escena.instantiate()
		new_item.setup(level_item.sprite, level_item.condiciones, plato, false)
		add_child(new_item)
		lista_items.append(new_item)
