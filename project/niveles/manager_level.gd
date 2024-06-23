extends Node
class_name ManagerLevel

@export var level_resource : LevelResource

@onready var plato = %Plato
var posicion:Vector2
var lista_items = []
@onready var condition = $"../Globo texto/Condition"
@onready var meal = $"../Globo texto/Meal"
@onready var ensenanza = $"../Ensenanza"



func _ready():
	level_resource.cantidadNegativos = Global.items_level[Global.current_level][0]
	level_resource.cantidadPositivos = Global.items_level[Global.current_level][1]
	level_resource.comida = Global.items_level[Global.current_level][2]
	level_resource.condicion = Global.items_level[Global.current_level][3]
	level_resource.ensenanza = Global.items_level[Global.current_level][4]
	
	ensenanza.texture = level_resource.ensenanza
	meal.texture = level_resource.comida
	condition.texture = level_resource.condicion
	
	posicion = Vector2(230,680)
	items_aleatorios()
	lista_items.shuffle()
	for i in lista_items:
		i.position = posicion
		posicion.x += 110
	
func items_aleatorios():
	var listaNegativos = level_resource.itemsNegativos.duplicate()
	var listaPositivos = level_resource.itemsPositivos.duplicate()
	#Acá quise filtrar por categoria pero no se pudo porque como el item no está creado aún no puedo filtrarlo por dicha categoria. 
	#Pensar mejor como hacer esto!!!!
	
	#if Global.items_level[2] == Global.ALMUERZO || Global.CENA: 
		#listaNegativos.filter(level_item.categoria == ALMCENA)
		#listaPositivos.filter(level_item.categoria == ALMCENA)
		#elif Global.items_level[2] == DESAYUNO || MERIENDA: 
			#listaNegativos.filter(Categoria == ALMCENA)
			#listaPositivos.filter(Categoria == ALMCENA)
			
	listaPositivos.shuffle()
	listaNegativos.shuffle()

	for c in level_resource.cantidadPositivos:
		var level_item = listaPositivos.pop_front()
		var new_item = level_item.escena.instantiate()
		new_item.setup(level_item.sprite, level_item.condiciones, plato, true, level_item.info, level_item.categoria)
		add_child(new_item)
		lista_items.append(new_item)
	for c in level_resource.cantidadNegativos:
		var level_item = listaNegativos.pop_front()
		var new_item = level_item.escena.instantiate()
		new_item.setup(level_item.sprite, level_item.condiciones, plato, false, level_item.info, level_item.categoria)
		add_child(new_item)
		lista_items.append(new_item)
