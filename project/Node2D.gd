extends AlimentoPro

class_name Alimentos


func _ready():

	# Instanciar un nuevo Sprite
	var sprite_instance = Sprite2D.new()
	
	# Asignar una textura al Sprite (puede ser texture_1 o texture_2)
	sprite_instance.texture = texture_4

	# Añadir el Sprite a la escena
	add_child(sprite_instance)
