extends Area2D

@onready var item_holder = $ItemHolder

func can_receive_item():
	return true

func receive_item(item: Node2D):
	item_holder.receive_item(item)

func _on_item_holder_item_held():
	var item = item_holder.offload_item()
	item.queue_free()
