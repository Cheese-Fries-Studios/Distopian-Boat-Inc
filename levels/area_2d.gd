extends Area2D

signal enable_menu(f)
var is_in_area

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: CharacterBody2D) -> void:
	enable_menu.emit()
	


func _on_body_exited(body: Node2D) -> void:
	enable_menu.emit()
