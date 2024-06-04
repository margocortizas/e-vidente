extends Node2D


@onready var sprite_2d = $Sprite2D
var condiciones
var draggable = false
var is_inside_droppable = false
var body_ref 
var offset: Vector2
var initialPos: Vector2
var plato 
@onready var area_2d = $Area2D


func _ready():
	area_2d.body_entered.connect(_on_area_2d_body_entered)
	area_2d.mouse_entered.connect(_on_area_2d_mouse_entered)
	area_2d.mouse_exited.connect(_on_area_2d_mouse_exited)
	area_2d.body_exited.connect(_on_area_2d_body_exited)
	


func setup(sprite, condiciones, plato):
	$Sprite2D.texture = sprite
	condiciones = condiciones
	plato = plato
	


func _process(delta):
	if draggable:
		if Input.is_action_just_pressed("click"):
			initialPos = global_position
			offset = get_global_mouse_position() - global_position
			Global.is_dragging = true
		if Input.is_action_pressed("click"):
			global_position = get_global_mouse_position() - offset
		elif Input.is_action_just_released("click"):
			Global.is_dragging = false
			var tween = get_tree().create_tween()
			if is_inside_droppable:
				tween.tween_property(self, "position", get_global_mouse_position(), 0.5).set_ease(Tween.EASE_OUT)
			else:
				tween.tween_property(self, "global_position", initialPos, 0.5).set_ease(Tween.EASE_OUT)

func _on_area_2d_body_entered(body):
	if body.is_in_group("droppable"):
		is_inside_droppable = true
		body_ref = body
		if body == plato:
			plato.elementos.append_array(condiciones)
			plato.cantAlimentos += 1
			print(plato.cantAlimentos)
			print(plato.elementos)

func _on_area_2d_body_exited(body):
	if body.is_in_group("droppable"):
		is_inside_droppable = false
		if body == plato:
			condiciones.map(func(cond): plato.elementos.erase(cond))
			plato.cantAlimentos -= 1
			print(plato.elementos)

func _on_area_2d_mouse_entered():
	if !Global.is_dragging:
		draggable = true
		scale = Vector2(1.2, 1.2)

func _on_area_2d_mouse_exited():
	if !Global.is_dragging:
		draggable = false
		scale = Vector2(1,1)

