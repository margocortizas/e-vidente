extends Node
class_name ManagerLevel

@export var level_resource : LevelResource

@onready var plato = %Plato

var posicion:Vector2
var lista_items = []
@onready var condition = $"../Globo texto/Condition"
@onready var meal = $"../Globo texto/Meal"
@onready var ensenanza = $"../Ensenanza"
var nivelActual

func setup(nivel):
	nivelActual = Global.items_segun_nivel(get_parent())
	
	level_resource.cantidadNegativos = nivelActual[Global.current_level][0]
	level_resource.cantidadPositivos = nivelActual[Global.current_level][1]
	level_resource.comida = nivelActual[Global.current_level][2]
	level_resource.condicion = nivelActual[Global.current_level][3]
	level_resource.ensenanza = nivelActual[Global.current_level][4]
	
	ensenanza.texture = level_resource.ensenanza
	meal.texture = level_resource.comida
	condition.texture = level_resource.condicion
	
	items_aleatorios()
	lista_items.shuffle()
	if (level_resource.cantidadNegativos + level_resource.cantidadPositivos) < 5 :
		posicion = Vector2(420,680) 
	else:
		posicion = Vector2(230,680)
	for i in lista_items:
		i.position = posicion
		posicion.x += 120
	

func items_aleatorios():
	var listaNegativos = level_resource.itemsNegativos.duplicate()
	var listaPositivos = level_resource.itemsPositivos.duplicate()
	listaNegativos.shuffle()
	listaPositivos.shuffle()
	
	var filtradosPositivos = Global.item_categoria(listaPositivos, nivelActual[Global.current_level][5])
	var filtradosNegativos = Global.item_categoria(listaNegativos, nivelActual[Global.current_level][5])
	
	for c in level_resource.cantidadPositivos:
		var level_item = filtradosPositivos.pop_front()
		var new_item = level_item.escena.instantiate()
		new_item.setup(level_item.sprite, level_item.condiciones, plato, true, level_item.info, level_item.categoria)
		add_child(new_item)
		lista_items.append(new_item)
	for c in level_resource.cantidadNegativos:
		var level_item = filtradosNegativos.pop_front()
		var new_item = level_item.escena.instantiate()
		new_item.setup(level_item.sprite, level_item.condiciones, plato, false, level_item.info, level_item.categoria)
		add_child(new_item)
		lista_items.append(new_item)
	
	
