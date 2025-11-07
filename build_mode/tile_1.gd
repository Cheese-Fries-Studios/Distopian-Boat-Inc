extends Button

signal button_press()

func _pressed() -> void:
		button_press.emit()
		print("signal sent")
