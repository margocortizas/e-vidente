extends Node2D

var draggable = false
var is_inside_droppable = false
var body_ref 
var offset: Vector2
var initialPos: Vector2

func _process(delta):
	if draggable:
		if Input.is_action_just_pressed("click"):
			initialPos = global_position
			offset = get_global_mouse_position() - global_position
			global.is_dragging = true
		if Input.is_action_pressed("click"):
			global_position = get_global_mouse_position() - offset
		elif Input.is_action_just_released("click"):
			global.is_dragging = false
			var tween = get_tree().create_tween()
			if is_inside_droppable:
				tween.tween_property(self, "position", body_ref.position, 0.5).set_ease(Tween.EASE_OUT)
			else:
				tween.tween_property(self, "global_position", initialPos, 0.5).set_ease(Tween.EASE_OUT)


func _on_area_2d_body_entered(body):
	if body.is_in_group("droppable"):
		is_inside_droppable = true
		body_ref = body


func _on_area_2d_body_exited(body):
	if body.is_in_group("droppable"):
		is_inside_droppable = false


func _on_area_2d_mouse_entered():
	if !global.is_dragging:
		draggable = true
		scale = Vector2(1.2, 1.2)


func _on_area_2d_mouse_exited():
	if !global.is_dragging:
		draggable = false
		scale = Vector2(1,1)
