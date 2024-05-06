extends Node2D

class_name AlimentoPro
var nombre : String = "gluten"
var draggable = false
var is_inside_droppable = false
var body_ref 
var offset: Vector2
var initialPos: Vector2
#
#var texture_1 : Texture
#var texture_2 : Texture
#var texture_3 : Texture
#var texture_4 : Texture
#var texture_5 : Texture
#var texture_6 : Texture
#
#func _ready():
	## Cargar las texturas desde el directorio de recursos
	#texture_1 = load("res://assets-sistema/alimento-arroz.png")
	#texture_2 = load("res://assets-sistema/alimento-avena.png")
	#texture_3 = load("res://assets-sistema/alimento-azucar.png")
	#texture_4 = load("res://assets-sistema/alimento-cebada.png")
	#texture_5 = load("res://assets-sistema/alimento-gluten.png")
	#texture_6 = load("res://assets-sistema/alimento-maicena.png")
	#
	## Instanciar un nuevo Sprite
	#var sprite_instance = Sprite2D.new()
		## Asignar una textura al Sprite (puede ser texture_1 o texture_2)
	#sprite_instance.texture = texture_1
	## Añadir el Sprite a la escena
	#add_child(sprite_instance)
#


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
		#body.elementos.add(name)


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


