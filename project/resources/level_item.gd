extends Resource

class_name LevelItem


enum Condicion {KETO, CELIACO, VEGANO, DIABETICO, VEGETARIANO}
enum Categoria {ALMCENA, DESAYMER, BEBIDA}

@export var condiciones:Array[Condicion]
@export var sprite:Texture2D
@export var escena:PackedScene
@export var posicion:Vector2
@export var esPositivo:bool
@export var info: Texture2D
@export var categoria : Categoria

