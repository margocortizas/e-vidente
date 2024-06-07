extends Sprite2D
class_name PlayerCambiante


@onready var plato = $"../Plato"
@onready var anim = $AnimatedSprite2D
@onready var adelante = $"../Adelante"
@onready var ensenanza = $"../Ensenanza"
var tipo: LevelItem.Condicion
var current_animation = "cagadodehambre" : 
	set(value):
		current_animation = value
		if anim != null: anim.play(current_animation)
var abstract_state : Estado : 
	set(new_state):
		abstract_state = new_state
		abstract_state.aplicar_animacion()
@onready var sentir_hambre = $AbstractState/SentirHambre
@onready var manager_level = $"../ManagerLevel"

func _ready():
	tipo = LevelItem.Condicion.CELIACO
	abstract_state = sentir_hambre
	anim.play(current_animation)

func item_en_plato(item):
	abstract_state.entra_item_plato(item, self)
	if item.esPositivo : 
		current_animation = "resonrison"
	else : 
		current_animation = "retriston"
	
func item_sale_plato(item):
	abstract_state.sale_item_plato(item, self)

func _on_animated_sprite_2d_animation_finished():
	abstract_state.aplicar_animacion()
