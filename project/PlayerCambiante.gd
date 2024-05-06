extends Sprite2D

var texture_hambriento : Texture
var texture_semienfermo : Texture
var texture_bastanteenfermo : Texture
var texture_muyenfermo : Texture
@onready var plato = $"../Plato"


func _ready():
	# Cargar las texturas desde el directorio de recursos
	texture_hambriento = load("res://assets-sistema/personaje-celiaco-1-cagado-de-hambre.png")
	texture_semienfermo = load("res://assets-sistema/personaje-celiaco-1-semi-emfermo.png")
	texture_bastanteenfermo = load("res://assets-sistema/personaje-celiaco-1-bastante-emfermo.png")
	texture_muyenfermo = load("res://assets-sistema/personaje-celiaco-1-muy-emfermo.png")

	if plato.elementos.has("gluten"):
		Sprite2D.texture = texture_semienfermo
	else:
		pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
