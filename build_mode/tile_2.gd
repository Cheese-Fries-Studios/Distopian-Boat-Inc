extends Button

signal button_press2()

func _pressed() -> void:
		button_press2.emit()
		print("signal sent tile 2")
