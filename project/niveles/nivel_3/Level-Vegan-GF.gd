extends Level
class_name LevelVeganGF


func _ready():
	victory.hide()
	adelante.disabled = true
	background.play()
	manager_level.setup(self)

func _on_atrás_pressed():
	get_tree().change_scene_to_file("res://niveles/intro.tscn")

func _victory():
	victory.show()
	victory.play("victory")
	adelante.disabled = false
	ensenanza.show()

func _on_adelante_pressed():
	if Global.current_level <= 5: 
		Global.current_level += 1
		get_tree().change_scene_to_file("res://niveles/nivel_3/Level-Vegan-GF.tscn")
	else: 
		get_tree().change_scene_to_file("res://niveles/intro.tscn")

