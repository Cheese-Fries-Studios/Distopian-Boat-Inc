extends CanvasLayer

var is_enabled
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	
func on_change():
	get_tree().change_scene_to_file("res://navigation/map.tscn")
