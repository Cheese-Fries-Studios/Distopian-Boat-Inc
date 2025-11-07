extends Area2D

const SPEED := 200

var target = null

@onready var trash_piles = get_tree().get_nodes_in_group("trash_piles")


func _ready() -> void:
	print(trash_piles)
	for node in trash_piles:
		var trash_pile = get_node(node.get_path())
		trash_pile.boat_entered.connect(hy)



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


func hy(size):
		print("Trash Pile Size: ", size)
