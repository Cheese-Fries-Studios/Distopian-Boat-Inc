extends Node2D

@onready var trash_piles = get_tree().get_nodes_in_group("trash_piles")

var trash_ammount: int

func _ready() -> void:
	print(trash_piles)
	for node in trash_piles:
		var trash_pile = get_node(node.get_path())
		trash_pile.boat_entered.connect(count_trash)


func count_trash(nr):
	trash_ammount += nr


func _process(_delta: float) -> void:
	if Input.is_key_pressed(KEY_ESCAPE):
		var trash_storage = preload("res://navigation/trash_storage.gd")
		var res = trash_storage.new()
		res.trash_collected = trash_ammount
		ResourceSaver.save(res, "res://runtime_resources/trash_counting.tres")

		get_tree().change_scene_to_file("res://levels/main.tscn")
