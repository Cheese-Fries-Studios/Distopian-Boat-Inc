extends CanvasLayer

@onready var enable = get_node("../Area2D")
var input = Input.is_action_just_pressed("map")
var is_enabled
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	enable.connect("enable_menu", Callable(self, "on_change"))
	is_enabled = true
	
func on_change():
	if visible == true:
		set_visible(false)
	else:
		set_visible(true)

func _process(delta: float) -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
