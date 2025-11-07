extends Sprite2D

@export var tilemap_layer: TileMapLayer
var selected_tile_data: Dictionary

func _ready() -> void:
	visible = false
	modulate.a = 0.6

func _process(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if !tilemap_layer:
			return
			
		var cell_pos: Vector2i = tilemap_layer.local_to_map(tilemap_layer.to_local(get_global_mouse_position()))
		
		if !selected_tile_data:
			if tilemap_layer.get_cell_source_id(cell_pos) != -1:
				selected_tile_data = {
					"pos": cell_pos,
					"id": tilemap_layer.get_cell_source_id(cell_pos),
					"atlas": tilemap_layer.get_cell_atlas_coords(cell_pos),
					"alt": tilemap_layer.get_cell_alternative_tile(cell_pos)
				}
				var tileatlas: TileSetAtlasSource
