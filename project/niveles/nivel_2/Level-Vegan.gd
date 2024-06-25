extends Level
class_name LevelVegan

func _ready():
	victory.hide()
	adelante.disabled = true
	background.play()
	

func _on_atrás_pressed():
	get_tree().change_scene_to_file("res://niveles/intro.tscn")

func _victory():
	victory.show()
	victory.play("victory")
	adelante.disabled = false
	ensenanza.show()

func _on_adelante_pressed():
	if Global.current_level_vegan >= 6: 
		get_tree().change_scene_to_file("res://niveles/intro.tscn")
	else: Global.current_level_vegan += 1
	get_tree().change_scene_to_file("res://niveles/nivel_2/level_vegan.tscn")
#Acá hay que mejorar esto porque no funca bien!
