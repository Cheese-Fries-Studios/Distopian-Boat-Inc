extends Button

signal button_press3()

func _pressed() -> void:
		button_press3.emit()
		print("signal sent tile 3")
