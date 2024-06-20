extends Node2D

var LEVEL_1
var itemsPositivos 
var itemsNegativos
var comida
var condicion
var cantItemsPositivos
var cantItemsNegativos
var ruta


func _on_button_pressed():
	get_tree().change_scene_to_file(ruta)

func _on_cap_1_pressed():
	
	LEVEL_1.cantidadNegativos = 1
	LEVEL_1.cantidadPositivos = 1
	LEVEL_1.itemsNegativos = preload("res://items/fideos.tres").instanciate()
	LEVEL_1.itemsPositivos = preload("res://items/fideosarroz.tres").instanciate()
	LEVEL_1.comida = null
	LEVEL_1.condicion = null
	get_tree().change_scene_to_file(LEVEL_1.instanciate())
	
func _on_cap_2_pressed():
	get_tree().change_scene_to_file("res://niveles/nivel_1/Level.tscn")

func _on_cap_3_pressed():
	get_tree().change_scene_to_file("res://niveles/nivel_1/Level.tscn")

func _on_cap_4_pressed():
	get_tree().change_scene_to_file("res://niveles/nivel_1/Level.tscn")

func _on_cap_5_pressed():
	get_tree().change_scene_to_file("res://niveles/nivel_1/Level.tscn")
