extends Node
class_name Estado

@export var level : Level
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
	if condiciones_de_victoria(player):
		level._victory()
		animation_name = "recontento"
		player.hambre.hide()

func sale_item_plato(item, player):
	if !item.esPositivo:
		if sale_item_negativo : 
			player.abstract_state = sale_item_negativo 
	else:
		if sale_item_positivo :
			player.abstract_state = sale_item_positivo 
	if condiciones_de_victoria(player):
		level._victory()
		animation_name = "recontento"
		player.hambre.hide()
		
		
func aplicar_animacion(): 
	player_cambiante.current_animation = animation_name

func condiciones_de_victoria(player) : 
	return (player.manager_level.level_resource.cantidadPositivos) == player.plato.cantAlimentosPos.keys().size() && player.plato.cantAlimentosNeg.is_empty() 
