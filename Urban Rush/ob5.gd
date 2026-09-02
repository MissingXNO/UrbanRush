extends Area2D
var motion = Vector2()
const UP = Vector2(0, - 1)


func _process(delta):
	
	position.x -= 5
	
	if position.x < - 90:
		queue_free()


func _on_ob5_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton\
	and event.button_index == BUTTON_LEFT\
	and event.is_pressed():
		queue_free()



