extends StaticBody2D

#func _process(delta):
	#if global.is_dragging:
		#visible = true
	#else:
		#visible = false

func _ready(): 
	input_event.connect(_on_input_event)
	

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int):
	if event is InputEventMouseButton : 
		visible = event.is_pressed()
	
