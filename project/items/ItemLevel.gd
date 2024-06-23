extends Node2D
class_name Item_level

@onready var sprite_2d = $Sprite2D
@onready var area_2d = $Area2D
var condiciones : Array[LevelItem.Condicion]
var body_ref 
var plato 
var offset: Vector2
var initialPos: Vector2
var esPositivo = true
var draggable = false
var categoria 
var is_inside_droppable = false
var info: Texture2D
var textSprite: Texture2D

func _ready():
	area_2d.area_entered.connect(_on_area_2d_body_entered)
	area_2d.mouse_entered.connect(_on_area_2d_mouse_entered)
	area_2d.mouse_exited.connect(_on_area_2d_mouse_exited)
	area_2d.area_exited.connect(_on_area_2d_body_exited)

func setup(sprite, condicion, superficie, booleano, texturaInfo, categorias):
	$Sprite2D.texture = sprite
	textSprite = sprite
	condiciones = condicion
	plato = superficie
	esPositivo = booleano
	info = texturaInfo
	categoria = categorias

func show_info():
	$Sprite2D.texture = info
	
func show_texture():
	$Sprite2D.texture = textSprite

func _process(delta):
	if draggable:
		if Input.is_action_just_pressed("click"):
			initialPos = global_position
			offset = get_global_mouse_position() - global_position
			Global.is_dragging = self
		if Input.is_action_pressed("click") && Global.is_dragging == self:
			global_position = get_global_mouse_position() - offset
		elif Input.is_action_just_released("click") && Global.is_dragging == self:
			Global.is_dragging = null
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
			plato.elementos.append_array(self.condiciones)

func _on_area_2d_body_exited(body):
	if body.is_in_group("droppable"):
		is_inside_droppable = false
		if body == plato:
			condiciones.map(func(cond): plato.elementos.erase(cond))
			


func _on_area_2d_mouse_entered():
	if !Global.is_dragging:
		draggable = true
		scale = Vector2(1.2, 1.2)

func _on_area_2d_mouse_exited():
	if !Global.is_dragging:
		draggable = false
		scale = Vector2(1,1)

