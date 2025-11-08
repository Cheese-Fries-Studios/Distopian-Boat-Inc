extends Button

signal button_press1()

func _pressed() -> void:
		button_press1.emit()
		print("signal sent tile 1")
