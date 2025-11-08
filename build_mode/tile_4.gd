extends Button

signal button_press4()

func _pressed() -> void:
		button_press4.emit()
		print("signal sent tile 4")
