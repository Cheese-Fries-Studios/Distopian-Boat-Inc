extends Control

signal escape_pressed

@onready var trash_ammount = ResourceLoader.load("res://runtime_resources/trash_counting.tres")
@onready var LABEL = $PanelContainer/CenterContainer/VBoxContainer/MarginContainer/Label

func updateLabel():
		LABEL.text = "You've collected " + str(trash_ammount.trash_collected) + " pieces of trash"

func _ready() -> void:
	if FileAccess.file_exists("res://runtime_resources/trash_counting.tres"):
		updateLabel()


func _input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		escape_pressed.emit()


func _on_button_pressed() -> void:
	if FileAccess.file_exists("res://runtime_resources/trash_counting.tres"):
		var res = ResourceLoader.load("res://runtime_resources/trash_counting.tres")
		res.trash_collected = 0
		ResourceSaver.save(res)
		updateLabel()
