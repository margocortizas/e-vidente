extends Level
class_name LevelVeganGluten


func _ready():
	victory.hide()
	adelante.disabled = true
	background.play()
	manager_level.setup(self)

func _on_atrás_pressed():
	get_tree().change_scene_to_file("res://interface/Libro-Vegan-GF.tscn")

func _victory():
	victory.show()
	victory.play("victory")
	adelante.disabled = false
	ensenanza.show()
	Global.items_level_vegan_gf[Global.current_level][6] = true

func _on_adelante_pressed():
	if Global.current_level <= 5: 
		Global.current_level += 1
		get_tree().change_scene_to_file("res://niveles/nivel_3/Level-Vegan-GF.tscn")
	else:
		get_tree().change_scene_to_file("res://niveles/intro.tscn")


