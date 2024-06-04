extends StaticBody2D
class_name Plato 

@onready var player_cambiante = $"../PlayerCambiante"

var elementos = []
var cantAlimentos = 0

#func entro_un_item():
	#
#
func _on_area_2d_area_entered(area):
	print(area.get_parent())
	#elementos.append(area.condiciones)
	


func _on_area_2d_body_entered(body):
	print(body.name)
	#elementos.append(body.condiciones)
	
