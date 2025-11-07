extends Control
func _process(_delta: float) -> void:
	var input = Input.is_action_just_pressed("build_mode")
	is_visible()
	if input == true:
		if visible == true:
			set_visible(false)
		else:
			set_visible(true)

@onready var button = get_node("buildings_hud/HBoxContainer/PanelContainer/tile1")
signal button_press2

func _ready() -> void:
	print ("control check 1")
	button.button_press.connect(fun)

func fun():
	print ("control check 2")
	button_press2.emit()
