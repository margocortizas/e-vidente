extends Node2D


var texture_2 : Texture


func _ready():
	# Cargar las texturas desde el directorio de recursos

	texture_2 = load("res://assets-sistema/alimento-avena.png")

	
	# Instanciar un nuevo Sprite
	var sprite_instance = AlimentoPro.new()
		# Asignar una textura al Sprite (puede ser texture_1 o texture_2)
	sprite_instance.texture = texture_2
	# Añadir el Sprite a la escena
	add_child(sprite_instance)
