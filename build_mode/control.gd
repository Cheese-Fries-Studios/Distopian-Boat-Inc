extends Control
func _process(_delta: float) -> void:
	var input = Input.is_action_just_pressed("build_mode")
	is_visible()
	if input == true:
		if visible == true:
			set_visible(false)
		else:
			set_visible(true)

@onready var button1 = get_node("buildings_hud/HBoxContainer/PanelContainer/tile_1")
@onready var button2 = get_node("buildings_hud/HBoxContainer/PanelContainer2/tile_2")
@onready var button3 = get_node("buildings_hud/HBoxContainer/PanelContainer3/tile_3")
@onready var button4 = get_node("buildings_hud/HBoxContainer/PanelContainer4/tile_4")
@onready var button5 = get_node("buildings_hud/HBoxContainer/PanelContainer5/tile_5")
signal button_press1
signal button_press2
signal button_press3
signal button_press4
signal button_press5


func _ready() -> void:
	print ("control check 1")
	button1.button_press1.connect(fun1)
	button2.button_press2.connect(fun2)
	button3.button_press3.connect(fun3)
	button4.button_press4.connect(fun4)
	button5.button_press5.connect(fun5)

func fun1():
	print ("control check 2 tile 1")
	button_press1.emit()
	
######

func fun2():
	print ("control check 2 tile 2")
	button_press2.emit()

######

func fun3():
	print ("control check 2 tile 3")
	button_press3.emit()

######

func fun4():
	print ("control check 2 tile 4")
	button_press4.emit()

######

func fun5():
	print ("control check 2 tile 5")
	button_press5.emit()
