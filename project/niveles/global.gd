extends Node

var almuerzo_cena = "ALMCENA"
var desayuno_merienda = "DESAMER"
var bebida = "BEBIDA"


const DESAYUNO = preload("res://assets-sistema/interfaz/desayuno.png")
const ALMUERZO = preload("res://assets-sistema/interfaz/almuerzo.png")
const MERIENDA = preload("res://assets-sistema/interfaz/merienda.png")
const CENA = preload("res://assets-sistema/interfaz/cena.png")
const BEBIDA = preload("res://assets-sistema/interfaz/cena.png")

const PREPARA_CELIAQUIA = preload("res://assets-sistema/interfaz/prepara-celiaquia.png")
const PREPARA_DIABETES = preload("res://assets-sistema/interfaz/prepara-diabetes.png")
const PREPARA_VEGANE = preload("res://assets-sistema/interfaz/prepara-vegane.png")
const PREPARA_VEGETARIANE = preload("res://assets-sistema/interfaz/prepara-vegetariane.png")
const PREPARA_VEGAN_GF = preload("res://assets-sistema/interfaz/prepara-vegan-gf.png")

var is_dragging : Object
var manager_level 
var current_level = 1

func items_segun_nivel(nivel):
	if nivel.name == "Level": 
		return items_level 
	elif nivel.name == "Level-Vegan": 
		return items_level_vegan
	else:
		return items_level_vegan_gf

func item_categoria(items, cate):
	print(get_tree().root)
	var items_categoria = []
	for i in items : 
		if i.categoria == cate:
			items_categoria.append(i)
	return items_categoria



var items_level = {	
					1: [1,1, ALMUERZO, PREPARA_CELIAQUIA, Ensenanzas.ENSENANZA_CELIAQUIA_1, almuerzo_cena], 
					2: [2,2, DESAYUNO, PREPARA_CELIAQUIA,Ensenanzas.ENSENANZA_CELIAQUIA_2, desayuno_merienda],
					3: [3,3, CENA, PREPARA_CELIAQUIA, Ensenanzas.ENSENANZA_CELIAQUIA_6, almuerzo_cena],
					4: [3,3, DESAYUNO, PREPARA_CELIAQUIA,Ensenanzas.ENSENANZA_CELIAQUIA_8, desayuno_merienda],
					5: [3,4, ALMUERZO, PREPARA_CELIAQUIA, Ensenanzas.ENSENANZA_CELIAQUIA_5, almuerzo_cena],
					6: [1,3, BEBIDA, PREPARA_CELIAQUIA, Ensenanzas.ENSENANZA_CELIAQUIA_7, bebida]
					}

var items_level_vegan = {	
					1: [1,1, ALMUERZO, PREPARA_VEGANE, Ensenanzaveganismo.ENSENANZA_VEGAN_VEGETARIANE_1, almuerzo_cena], 
					2: [2,2, DESAYUNO, PREPARA_VEGANE,Ensenanzaveganismo.ENSENANZA_VEGAN_VEGETARIANE_2, desayuno_merienda],
					3: [3,3, CENA, PREPARA_VEGANE, Ensenanzaveganismo.ENSENANZA_VEGAN_VEGETARIANE_3, almuerzo_cena],
					4: [3,3, DESAYUNO, PREPARA_VEGANE,Ensenanzaveganismo.ENSENANZA_VEGAN_VEGETARIANE_4, desayuno_merienda],
					5: [3,4, ALMUERZO, PREPARA_VEGANE, Ensenanzaveganismo.ENSENANZA_VEGAN_VEGETARIANE_5, almuerzo_cena],
					6: [1,1, BEBIDA, PREPARA_VEGANE, Ensenanzaveganismo.ENSENANZA_VEGAN_VEGETARIANE_6, bebida]
					}

var items_level_vegan_gf = {	
					1: [1,1, ALMUERZO, PREPARA_VEGAN_GF, Ensenanzas.ENSENANZA_CELIAQUIA_3, almuerzo_cena], 
					2: [2,2, DESAYUNO, PREPARA_VEGAN_GF,Ensenanzaveganismo.ENSENANZA_VEGAN_VEGETARIANE_7, desayuno_merienda],
					3: [3,3, CENA, PREPARA_VEGAN_GF, Ensenanzas.ENSENANZA_CELIAQUIA_4, almuerzo_cena],
					4: [3,3, DESAYUNO, PREPARA_VEGAN_GF,Ensenanzaveganismo.ENSENANZA_VEGAN_VEGETARIANE_8, desayuno_merienda],
					5: [3,4, ALMUERZO, PREPARA_VEGAN_GF, Ensenanzas.ENSENANZA_CELIAQUIA_9, almuerzo_cena],
					6: [1,1, BEBIDA, PREPARA_VEGAN_GF, Ensenanzas.ENSENANZA_CELIAQUIA_7, bebida]
					}
