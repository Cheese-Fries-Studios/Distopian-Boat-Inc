extends TileMapLayer

@onready var button = $"../CharacterBody2D"
var pressed = false

func _ready() -> void:
	print("tile check 1")
	button.button_press3.connect(fun)

func fun():
	pressed = true

func _physics_process(delta: float) -> void:
	if (pressed == true):
		if (Input.is_action_just_pressed("left_click")):
			var tile = local_to_map(get_global_mouse_position())
			set_cell(tile, 3, Vector2i(1, 1))
		
		if (Input.is_action_just_pressed("right_click")):
			var tile = local_to_map(get_global_mouse_position())
			set_cell(tile, -1, Vector2i(1, 1))
	
	if (Input.is_key_pressed(KEY_B)):
		pressed = false
