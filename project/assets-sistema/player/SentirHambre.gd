extends "res://assets-sistema/player/AbstractState.gd"

@export var level : Level

func entra_item_plato(item, player):
	super.entra_item_plato(item, player)
	if item.esPositivo && player.plato.cantAlimentos == player.manager_level.level_resource.cantidadPositivos +1:
		level._victory()
