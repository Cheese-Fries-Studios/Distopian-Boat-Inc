extends CharacterBody2D

@export var speed = 400

func get_input():
	var input_dir = Input.get_vector("left", "right", "up", "down")
	print(input_dir)
	velocity = input_dir * speed

func _physics_process(_delta):
	get_input()
	move_and_slide()
