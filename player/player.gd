extends CharacterBody2D

@export var speed = 400

func get_input():
	var input_dir = Input.get_vector("left", "right", "up", "down")
	velocity = input_dir * speed

func _physics_process(_delta):
	get_input()
	move_and_slide()
	
@onready var button = get_node("CanvasLayer/Control")
signal button_press3

func _ready() -> void:
	print("player check 1")
	button.button_press2.connect(fun)

func fun():
	print("player check 2")
	button_press3.emit()
