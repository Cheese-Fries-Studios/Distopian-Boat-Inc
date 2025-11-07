extends Area2D

signal enable_menu
var is_in_area

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(_body: CharacterBody2D) -> void:
	get_tree().change_scene_to_file("res://navigation/map.tscn")
