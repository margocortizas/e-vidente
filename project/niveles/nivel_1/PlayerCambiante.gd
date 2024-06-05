extends Sprite2D

@onready var plato = $"../Plato"
@onready var anim = $AnimatedSprite2D
@onready var adelante = $"../Adelante"
@onready var ensenanza = $"../Ensenanza"
var tipo: LevelItem.Condicion
var current_animation = "cagadodehambre" 
@onready var abstract_state : Estado
@onready var sentir_hambre = $AbstractState/SentirHambre


func _ready():
	tipo = LevelItem.Condicion.CELIACO
	abstract_state = sentir_hambre


func _process(delta):
	anim.play(current_animation)
		
func item_en_plato(item):
	if item.esPositivo:
		current_animation = "resonrison"
		abstract_state.entra_item_plato(item, self)
	else: 
		current_animation="retriston"
		abstract_state.entra_item_plato(item, self)
	
