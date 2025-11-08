extends Area2D

func _on_body_entered(_body: Node2D) -> void:
	print("test")
	var menu = preload("res://logistics/trash_console_ui.tscn").instantiate()
	$CanvasLayer.add_child(menu)
	
	menu.escape_pressed.connect(func():
		menu.queue_free()
	)	

