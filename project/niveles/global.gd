extends Node


const DESAYUNO = preload("res://assets-sistema/interfaz/desayuno.png")
const ALMUERZO = preload("res://assets-sistema/interfaz/almuerzo.png")
const MERIENDA = preload("res://assets-sistema/interfaz/merienda.png")
const CENA = preload("res://assets-sistema/interfaz/cena.png")

const PREPARA_CELIAQUIA = preload("res://assets-sistema/interfaz/prepara-celiaquia.png")

var is_dragging : Object
var manager_level 
var current_level = 1
var items_level = {	1: [1,1, ALMUERZO, PREPARA_CELIAQUIA, Ensenanzas.ENSENANZA_CELIAQUIA_1], 
					2: [2,2, DESAYUNO, PREPARA_CELIAQUIA,Ensenanzas.ENSENANZA_CELIAQUIA_2],
					3: [3,3, CENA, PREPARA_CELIAQUIA, Ensenanzas.ENSENANZA_CELIAQUIA_3],
					4: [3,3, DESAYUNO, PREPARA_CELIAQUIA,Ensenanzas.ENSENANZA_CELIAQUIA_4],
					5: [3,4, CENA, PREPARA_CELIAQUIA, Ensenanzas.ENSENANZA_CELIAQUIA_5]}
