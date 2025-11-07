extends Sprite2D

@export var tilemap_layer: TileMapLayer
var selected_tile_data: Dictionary

func _ready() -> void:
	visible = false
	modulate.a = 0.6

func _input(event: InputEvent) -> void:
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
				var tileatlas: TileSetAtlasSource = tilemap_layer.tile_set.get_source(tilemap_layer.get_cell_source_id(cell_pos))
				texture = tileatlas.texture
				region_enabled = true
				region_rect = tileatlas.get_tile_texture_region(selected_tile_data.atlas)
				visible = true
				
				tilemap_layer.set_cell(cell_pos, -1)
		else:
			tilemap_layer.set_cell(
				selected_tile_data.pos,
				tilemap_layer.get_cell_source_id(cell_pos),
				tilemap_layer.get_cell_atlas_coords(cell_pos),
				tilemap_layer.get_cell_alternative_tile(cell_pos)
			)
			
			tilemap_layer.set_cell(
				cell_pos,
				selected_tile_data.id,
				selected_tile_data.atlas,
				selected_tile_data.alt
			)
			
			selected_tile_data.clear()
			visible = false

func _process(_delta) -> void:
	if selected_tile_data:
		var mouse_pos: Vector2 = tilemap_layer.map_to_local(tilemap_layer.to_local(get_global_mouse_position()))
		global_position = mouse_pos + tilemap_layer.global_position
