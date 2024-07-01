extends Libro
class_name LibroVeganGF

func _ready():
	background.play()
	cap_2.disabled = not Global.items_level_vegan_gf[1][6]
	cap_3.disabled = not Global.items_level_vegan_gf[2][6]
	cap_4.disabled = not Global.items_level_vegan_gf[3][6]
	cap_5.disabled = not Global.items_level_vegan_gf[4][6]
	cap_6.disabled = not Global.items_level_vegan_gf[5][6]
	
func _on_cap_1_pressed():
	Global.current_level = 1
	get_tree().change_scene_to_file("res://niveles/nivel_3/Level-Vegan-GF.tscn")
	
func _on_cap_2_pressed():
	Global.current_level = 2
	get_tree().change_scene_to_file("res://niveles/nivel_3/Level-Vegan-GF.tscn")
func _on_cap_3_pressed():
	Global.current_level = 3
	get_tree().change_scene_to_file("res://niveles/nivel_3/Level-Vegan-GF.tscn")

func _on_cap_4_pressed():
	Global.current_level = 4
	get_tree().change_scene_to_file("res://niveles/nivel_3/Level-Vegan-GF.tscn")

func _on_cap_5_pressed():
	Global.current_level = 5
	get_tree().change_scene_to_file("res://niveles/nivel_3/Level-Vegan-GF.tscn")
	
func _on_cap_6_pressed():
	Global.current_level = 6
	get_tree().change_scene_to_file("res://niveles/nivel_3/Level-Vegan-GF.tscn")

func _on_atras_pressed():
	get_tree().change_scene_to_file("res://interface/archivero.tscn")
