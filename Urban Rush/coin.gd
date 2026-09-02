extends Area2D
var motion = Vector2()
const UP = Vector2(0, - 1)




func _ready():
	pass


func _process(delta):
	
	position.x -= 200 * delta
	


	if position.x < - 100:
		queue_free()




func _on_coin_body_entered(body):
	queue_free()
