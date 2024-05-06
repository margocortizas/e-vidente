extends StaticBody2D

func _process(delta):
	if global.is_dragging:
		visible = true
	else:
		visible = false


func _on_mouse_entered():
	print('entrando menu')
