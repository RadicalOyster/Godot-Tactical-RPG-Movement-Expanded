extends TileMap
var movement_data

func _ready():
	movement_data = tile_set.movement_data

func get_movement_costs(grid: Grid):
	var movement_costs = []
	for y in range(grid.size.y):
		movement_costs.append([])
		for x in range(grid.size.x):
			var tile = get_cell(x, y)
			var movement_cost = movement_data.get(tile)
			movement_costs[y].append(movement_cost)
	return movement_costs
