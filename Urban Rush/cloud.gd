extends Sprite


func _ready():
	pass

func _process(delta):
	position.x -= 2
	if position.x < - 65:
		position.x = 488
