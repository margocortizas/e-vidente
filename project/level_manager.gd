extends Node
class_name LevelManager

@onready var current_level = $CurrentLevel
@export var levels: Array
@export var main_menu_path: String

var level: int = 0

func _ready():
	call_deferred("_setup_level", level)

func _setup_level(id: int) -> void:
	# Chequea que exista un nivel, y el número de nivel dado es correcto
	if id >= 0 && id < levels.size():
		# Remueve el nivel activo, si existiese
		if current_level.get_child_count() > 0:
			for child in current_level.get_children():
				current_level.remove_child(child)
				child.queue_free()
		# Inicializa el nivel nuevo y lo agrega al árbol
		var level_instance: Level = levels[id].instance()
		current_level.add_child(level_instance)
		$level_instance.return_requested.connect(_return_called)
		#level_instance.connect("return_requested", self, "_return_called")
		#level_instance.connect("restart_requested", self, "_restart_called")
		#level_instance.connect("next_level_requested", self, "_next_called")

func _return_called() -> void:
	get_tree().paused = false
	get_tree().change_scene(main_menu_path)

# Callback de reinicio del nivel.
func _restart_called() -> void:
	_setup_level(level)

# Callback de nivel siguiente.
func _next_called() -> void:
	level = min(level + 1, levels.size() - 1)
	_setup_level(level)
