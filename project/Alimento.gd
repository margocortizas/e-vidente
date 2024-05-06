extends RigidBody2D

signal clicked

var held = false

#func _input_event(viewport, event, shape_idx):
	#if event is InputEventMouseButton:
		#if event.button_index == MOUSE_BUTTON_LEFT && event.pressed:
			#emit_signal("clicked", self)
#
#func _physics_process(delta):
	#if held:
		#global_transform.origin = get_global_mouse_position()
#
#func pickup():
	#if held:
		#return
	#RigidBody2D.FREEZE_MODE_STATIC
	#held = true
#
#func drop(impulse=Vector2.ZERO):
	#if held:
		#RigidBody2D.DISABLE_MODE_KEEP_ACTIVE
		#apply_central_impulse(impulse)
		#held = false



