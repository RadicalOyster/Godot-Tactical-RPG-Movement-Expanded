extends Node
class_name LinkedNode

var value
var priority: int
var next: LinkedNode

func _init(node_value: Vector2, node_priority: int, next_node: LinkedNode = null):
	value = node_value
	priority = node_priority
	next = next_node

func set_value(new_value: Vector2):
	value = new_value

func set_priority(new_priority: int):
	priority = new_priority

func set_next(new_node: LinkedNode):
	next = new_node
