extends TileMapLayer

@onready var button1 = $"../CharacterBody2D"
@onready var button2 = $"../CharacterBody2D"
@onready var button3 = $"../CharacterBody2D"
@onready var button4 = $"../CharacterBody2D"
@onready var button5 = $"../CharacterBody2D"
var pressed1
var pressed2
var pressed3
var pressed4
var pressed5

func _ready() -> void:
	print("tile check 1")
	button1.button_press1.connect(fun1)
	button2.button_press2.connect(fun2)
	button3.button_press3.connect(fun3)
	button4.button_press4.connect(fun4)
	button5.button_press5.connect(fun5)

func fun1():
	pressed1 = true
	pressed2 = false
	pressed3 = false
	pressed4 = false
	pressed5 = false

func fun2():
	pressed2 = true
	pressed1 = false
	pressed3 = false
	pressed4 = false
	pressed5 = false
	

func fun3():
	pressed3 = true
	pressed1 = false
	pressed2 = false
	pressed4 = false
	pressed5 = false

func fun4():
	pressed4 = true
	pressed1 = false
	pressed2 = false
	pressed3 = false
	pressed5 = false

func fun5():
	pressed5 = true
	pressed1 = false
	pressed2 = false
	pressed3 = false
	pressed4 = false

func _physics_process(_delta: float) -> void:
	if (pressed1 == true):
		if (Input.is_action_just_pressed("left_click")):
			var tile = local_to_map(get_global_mouse_position())
			set_cell(tile, 3, Vector2i(0, 0))
		
		if (Input.is_action_just_pressed("right_click")):
			var tile = local_to_map(get_global_mouse_position())
			set_cell(tile, -1, Vector2i(0, 0))
	
	#####
	
	if (pressed2 == true):
		if (Input.is_action_just_pressed("left_click")):
			var tile = local_to_map(get_global_mouse_position())
			set_cell(tile, 3, Vector2i(0, 1))
		
		if (Input.is_action_just_pressed("right_click")):
			var tile = local_to_map(get_global_mouse_position())
			set_cell(tile, -1, Vector2i(0, 0))
	
	#####
	
	if (pressed3 == true):
		if (Input.is_action_just_pressed("left_click")):
			var tile = local_to_map(get_global_mouse_position())
			set_cell(tile, 3, Vector2i(0, 2))
		
		if (Input.is_action_just_pressed("right_click")):
			var tile = local_to_map(get_global_mouse_position())
			set_cell(tile, -1, Vector2i(0, 0))
	
	#####
	
	if (pressed4 == true):
		if (Input.is_action_just_pressed("left_click")):
			var tile = local_to_map(get_global_mouse_position())
			set_cell(tile, 3, Vector2i(1, 0))
		
		if (Input.is_action_just_pressed("right_click")):
			var tile = local_to_map(get_global_mouse_position())
			set_cell(tile, -1, Vector2i(0, 0))
	
	#####
	
	if (pressed5 == true):
		if (Input.is_action_just_pressed("left_click")):
			var tile = local_to_map(get_global_mouse_position())
			set_cell(tile, 3, Vector2i(1, 1))
		
		if (Input.is_action_just_pressed("right_click")):
			var tile = local_to_map(get_global_mouse_position())
			set_cell(tile, -1, Vector2i(0, 0))
	
	if (Input.is_key_pressed(KEY_B)):
		pressed1 = false
		pressed2 = false
		pressed3 = false
		pressed4 = false
		pressed5 = false
