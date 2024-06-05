extends "res://assets-sistema/player/AbstractState.gd"

@onready var sentirse_morir = $"../SentirseMorir"
@onready var sentirse_muy_mal = $"../SentirseMuyMal"


func entra_item_plato(item, player):
	if !item.esPositivo:
		player.current_animation = "muelto"
		player.abstract_state = sentirse_morir
	else:
		player.current_animation = "masmasmochito"
		player.abstract_state = sentirse_muy_mal

