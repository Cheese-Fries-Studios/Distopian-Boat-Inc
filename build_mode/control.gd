extends Control
func _process(delta: float) -> void:
	var input = Input.is_action_just_pressed("build_mode")
	is_visible()
	if input == true:
		if visible == true:
			set_visible(false)
		else:
			set_visible(true)
