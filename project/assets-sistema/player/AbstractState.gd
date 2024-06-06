extends Node
class_name Estado

@export var player_cambiante : PlayerCambiante
@export var animation_name : String 
@export var entra_item_positivo : Estado 
@export var entra_item_negativo : Estado 
@export var sale_item_positivo : Estado 
@export var sale_item_negativo : Estado 


func entra_item_plato(item, player):
	if !item.esPositivo:
		if entra_item_negativo : 
			player.abstract_state = entra_item_negativo 
	else:
		if entra_item_positivo :
			player.abstract_state = entra_item_positivo 
		

func sale_item_plato(item, player):
	if !item.esPositivo:
		if sale_item_negativo : 
			player.abstract_state = sale_item_negativo 
	else:
		if sale_item_positivo :
			player.abstract_state = sale_item_positivo 
	

func aplicar_animacion(): 
	player_cambiante.current_animation = animation_name
