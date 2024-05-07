extends Sprite2D

var texture_hambriento : CompressedTexture2D
var texture_semienfermo : CompressedTexture2D
var texture_bastanteenfermo : CompressedTexture2D
var texture_muyenfermo : CompressedTexture2D
@onready var plato = $"../Plato"
@onready var anim = $AnimatedSprite2D

func _ready():
	# Cargar las texturas desde el directorio de recursos
	texture_hambriento = load("res://assets-sistema/personaje-celiaco-1-cagado-de-hambre.png")
	texture_semienfermo = load("res://assets-sistema/personaje-celiaco-1-semi-emfermo.png")
	texture_bastanteenfermo = load("res://assets-sistema/personaje-celiaco-1-bastante-emfermo.png")
	texture_muyenfermo = load("res://assets-sistema/personaje-celiaco-1-muy-emfermo.png")
	
	anim.play("cagadodehambre")
	
	#if plato.elementos.has("gluten"):
		#Sprite2D.texture = texture_semienfermo
	#else:
		#pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if plato.elementos.is_empty():
		anim.play("cagadodehambre")
	elif plato.elementos.has("Gluten") && plato.elementos.has("Arroz"):
			anim.play("masmochito")
	elif (plato.elementos.has("Gluten") || plato.elementos.has("Cebada")) || plato.elementos.has("Arroz"):
			anim.play("mochito")
			


func _on_area_2d_body_entered(body):
	print(body)
