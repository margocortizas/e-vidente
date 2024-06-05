extends "res://assets-sistema/player/AbstractState.gd"

@onready var sentirse_mal = $"../SentirseMal"
@onready var sentirse_bastante_mal = $"../SentirseBastanteMal"

func entra_item_plato(item, player):
	if !item.esPositivo:
		player.current_animation = "masmasmochito"
		player.abstract_state = sentirse_bastante_mal 
	else:
		player.current_animation = "mochito"
		player.abstract_state = sentirse_mal 

		
