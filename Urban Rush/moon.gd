extends Sprite



var timecyc = false

func _ready():
	pass

func _process(delta):
	
	position.x -= 1
	if timecyc == false:
		texture = load("res://moon.png")
	else:
		texture = load("res://sun.png")










		


	
	position.y = (0.0012 * (position.x - 130) * (position.x - 130)) - 20
	if position.x < - 190:
		position.x = 360
		position.y = 64
		if timecyc == false:
			timecyc = true
		else:
			timecyc = false
		

