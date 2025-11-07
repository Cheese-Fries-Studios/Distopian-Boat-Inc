extends Area2D

signal boat_entered(size: int)

var random_scale: int = 0

func _ready() -> void:
	area_entered.connect(emit_size) 

	random_scale = 6 + randi() % 13
	scale = Vector2(random_scale, random_scale)
	

func emit_size(_x):
	boat_entered.emit(random_scale)
