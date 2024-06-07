extends Node2D

@onready var no_realizado = $NoRealizado
@onready var realizado = $Realizado

func _ready():
	no_realizado.visible = !visible
