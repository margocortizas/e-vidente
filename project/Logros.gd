extends Node2D

@onready var no_realizado = $NoRealizado
@onready var realizado = $Realizado
# Called when the node enters the scene tree for the first time.
func _ready():
	no_realizado.visible = !visible


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
