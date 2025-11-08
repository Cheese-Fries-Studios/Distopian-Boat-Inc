extends CharacterBody2D

@export var speed = 400

func get_input():
	var input_dir = Input.get_vector("left", "right", "up", "down")
	velocity = input_dir * speed

func _physics_process(_delta):
	get_input()
	move_and_slide()
	
@onready var button1 = get_node("CanvasLayer/Control")
@onready var button2 = get_node("CanvasLayer/Control")
@onready var button3 = get_node("CanvasLayer/Control")
@onready var button4 = get_node("CanvasLayer/Control")
@onready var button5 = get_node("CanvasLayer/Control")
signal button_press1
signal button_press2
signal button_press3
signal button_press4
signal button_press5

func _ready() -> void:
	print("player check 1")
	button1.button_press1.connect(fun1)
	button2.button_press2.connect(fun2)
	button3.button_press3.connect(fun3)
	button4.button_press4.connect(fun4)
	button5.button_press5.connect(fun5)

func fun1():
	print("player check 2 tile 1")
	button_press1.emit()

func fun2():
	print("player check 2 tile 2")
	button_press2.emit()

func fun3():
	print("player check 2 tile 3")
	button_press3.emit()

func fun4():
	print("player check 2 tile 4")
	button_press4.emit()

func fun5():
	print("player check 2 tile 5")
	button_press5.emit()
