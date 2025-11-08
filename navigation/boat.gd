extends Area2D

const SPEED := 200

var target = null


func _input(event):
	if event is InputEventMouseButton and event.pressed:
		target = get_global_mouse_position()


func _physics_process(delta):
	if target:
		var dir = target - global_position
		if global_position.distance_to(target) > 1:
			rotation = dir.angle() + deg_to_rad(-90)
			global_position = global_position.move_toward(target, SPEED * delta)
		else:
			target = null
