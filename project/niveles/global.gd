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


func item_categoria(items, cate):
	var items_categoria = []
	for i in items : 
		if i.categoria == cate:
			items_categoria.append(i)
	return items_categoria

var is_dragging : Object
var manager_level 
var current_level = 1
var items_level = {	1: [1,1, ALMUERZO, PREPARA_CELIAQUIA, Ensenanzas.ENSENANZA_CELIAQUIA_1, almuerzo_cena], 
					2: [2,2, DESAYUNO, PREPARA_CELIAQUIA,Ensenanzas.ENSENANZA_CELIAQUIA_2, desayuno_merienda],
					3: [3,3, CENA, PREPARA_CELIAQUIA, Ensenanzas.ENSENANZA_CELIAQUIA_3, almuerzo_cena],
					4: [3,3, DESAYUNO, PREPARA_CELIAQUIA,Ensenanzas.ENSENANZA_CELIAQUIA_4, desayuno_merienda],
					5: [3,4, BEBIDA, PREPARA_CELIAQUIA, Ensenanzas.ENSENANZA_CELIAQUIA_5, bebida]}
