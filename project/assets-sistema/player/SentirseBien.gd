extends "res://assets-sistema/player/AbstractState.gd"

@onready var sentir_hambre = $"../SentirHambre"
@onready var sentirse_bien = $"."

func entra_item_plato(item, player):
	if !item.esPositivo:
		player.current_animation = "cagadodehambre"
	else:
		player.current_animation = "recontento"

		

