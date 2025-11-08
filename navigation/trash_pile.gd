extends Area2D

signal boat_entered(size: int)

var random_scale: int = 0

func _ready() -> void:
	area_entered.connect(emit_size) 

	$Timer.wait_time = 0.3
	$Timer.timeout.connect(timeout)

	random_scale = 6 + randi() % 13
	var random_rotation = deg_to_rad(randi() % 360)
	rotation = random_rotation
	scale = Vector2(random_scale, random_scale)
	

func emit_size(_x):
	boat_entered.emit(random_scale)
	$Timer.start()


func timeout():
	call_deferred("free")
