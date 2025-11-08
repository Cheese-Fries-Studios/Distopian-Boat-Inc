extends Button

signal button_press5()

func _pressed() -> void:
		button_press5.emit()
		print("signal sent tile 5")
