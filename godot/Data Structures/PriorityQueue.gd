extends Node
class_name PriorityQueue

var front
var new_node
var temp

func _init():
	front = null

func is_empty():
	return front == null

func push(value: Vector2, priority):
	if is_empty():
		front = LinkedNode.new(value, priority)
		
	elif front.priority > priority:
		new_node = LinkedNode.new(value, priority, front)
		front = new_node
	
	else:
		temp = front
		
		while temp.next:
			if priority <= temp.next.priority:
				break
			
			temp = temp.next
		
		new_node = LinkedNode.new(value, priority, temp.next)
		temp.next = new_node

func pop():
	if is_empty():
		return
	else:
		temp = front
		front = front.next
		return temp

func peek():
	return front
