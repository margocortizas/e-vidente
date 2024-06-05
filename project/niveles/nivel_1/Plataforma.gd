extends StaticBody2D
class_name Plato 

@onready var player_cambiante = $"../PlayerCambiante"
@onready var audio_stream_player_2d = $AudioStreamPlayer2D
@onready var bien = $Bien
@onready var mal = $Mal

var elementos : Array[LevelItem.Condicion]
var cantAlimentos = 0

#func entro_un_item():
#

func _on_area_2d_area_entered(area):
	var item_level = area.get_parent()
	player_cambiante.item_en_plato(item_level)
	if item_level.esPositivo:
		bien.play()
	else: 
		mal.play()

func _on_area_2d_area_exited(area):
	pass
