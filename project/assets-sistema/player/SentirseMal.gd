extends "res://assets-sistema/player/AbstractState.gd"

@onready var sentir_hambre = $"../SentirHambre"
@onready var sentirse_muy_mal = $"../SentirseMuyMal"


func entra_item_plato(item, player):
	if !item.esPositivo:
		player.current_animation = "masmochito"
		player.abstract_state = sentirse_muy_mal 
	else:
		player.current_animation = "mochito"
		player.abstract_state = sentir_hambre 
