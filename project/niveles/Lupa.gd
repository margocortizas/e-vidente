extends Area2D
class_name Lupa


func _on_area_entered(area):
	var item_level = area.get_parent()
	item_level.show_info()
	

func _on_area_exited(area):
	var item_level = area.get_parent()
	item_level.show_texture()
