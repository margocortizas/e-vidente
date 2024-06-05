extends "res://assets-sistema/player/AbstractState.gd"

func entra_item_plato(item, player):
	if !item.esPositivo:
		player.current_animation = "masmochito"
	else:
		player.current_animation = "mochito"

		
