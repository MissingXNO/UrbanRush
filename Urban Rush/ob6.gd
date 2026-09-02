extends KinematicBody2D
var motion = Vector2()
const UP = Vector2(0, - 1)


func _ready():
	pass



func _process(delta):
	
	motion.x = - 200
	motion.y = 0
	motion = move_and_slide(motion, UP)
	if position.x < - 100:
		queue_free()
	
