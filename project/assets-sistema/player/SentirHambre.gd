extends "res://assets-sistema/player/AbstractState.gd"

@onready var sentirse_mal = $"../SentirseMal"

func entra_item_plato(item, player):
	if !item.esPositivo:
		player.current_animation = "mochito"
		player.abstract_state = sentirse_mal

