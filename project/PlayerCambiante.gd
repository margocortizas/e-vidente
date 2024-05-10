extends Sprite2D

var texture_hambriento : CompressedTexture2D
var texture_semienfermo : CompressedTexture2D
var texture_bastanteenfermo : CompressedTexture2D
var texture_muyenfermo : CompressedTexture2D
@onready var plato = $"../Plato"
@onready var anim = $AnimatedSprite2D
var tipo: String
var bien: bool = false

func _ready():
	anim.play("cagadodehambre")
	tipo = "celiaco"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#
	#elif plato.elementos.has("Gluten") && plato.elementos.has("Arroz"):
			#anim.play("masmochito")
	#elif (plato.elementos.has("Gluten") || plato.elementos.has("Cebada")) || plato.elementos.has("Avena") :
			#anim.play("mochito")
	var coincidencias = plato.elementos.count("celiaco")
	if plato.elementos.is_empty():
		anim.play("cagadodehambre")
	if coincidencias == 1:
		anim.play("mochito")
	elif plato.cantAlimentos == 3 && coincidencias == 0:
		get_tree().root.get_child(0)._victory()
		bien = true
		anim.play("recontento")
	elif coincidencias == 2:
		anim.play("masmochito")
	elif coincidencias >= 3:
		anim.play("muelto")




