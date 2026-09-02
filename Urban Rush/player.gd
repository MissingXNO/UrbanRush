extends KinematicBody2D

const UP = Vector2(0, - 1)
const GRAVITY = 22
const MAXFALLSPEED = 500
const MAXSPEED = 200
const JUMPFORCE = 510
const ACCEL = 20
var motion = Vector2()
var facing_right = true


var up
var down

func _ready():
	pass

func _physics_process(delta):
	
	motion.y += GRAVITY
	if motion.y > MAXFALLSPEED:
		motion.y = MAXFALLSPEED

	
	
	if down == true and is_on_floor():
		$AnimationPlayer.play("slide")
		
		
	elif motion.y > 180:
		$AnimationPlayer.play("fall")
		$wall_detector / CollisionShape2D.position.x = 1
		$wall_detector / CollisionShape2D.scale.y = 0.9
		$Sprite.position.y = 0
		$CollisionShape2D.rotation = 0
		
	elif motion.y < 0:
		$AnimationPlayer.play("jump")
		$wall_detector / CollisionShape2D.position.x = 1
		$wall_detector / CollisionShape2D.scale.y = 0.9
		$Sprite.position.y = 0
		$CollisionShape2D.rotation = 0
	else:
		$AnimationPlayer.play("run")
	
	
	
	
	if up == false:
		motion.y = lerp(motion.y, 180, 0.08)
		
	
	
	
	if is_on_floor():
		if up == true:
			motion.y = - JUMPFORCE
	if motion.y > 0:
		up = false






	if down == true and is_on_floor():
			$wall_detector / CollisionShape2D.position.x = 10
			$wall_detector / CollisionShape2D.scale.y = 0.4
			$Sprite.position.y = - 7
			$CollisionShape2D.rotation = PI / 2

	if down == false:
			$wall_detector / CollisionShape2D.position.x = 1
			$wall_detector / CollisionShape2D.scale.y = 0.9
			$Sprite.position.y = 0
			$CollisionShape2D.rotation = 0

	motion = move_and_slide(motion, UP)

	position.x = clamp(position.x, 60, 60)
	if is_on_floor() and $slide_sfx.playing == false and down == true:
		$slide_sfx.play()
	if not is_on_floor():
		$slide_sfx.stop()

func _on_wall_detector_body_entered(body):
	queue_free()
	get_tree().change_scene("res://game_over_menu.tscn")

func _on_up_pressed():
	up = true
	if is_on_floor():
		$jump_sfx.play()

func _on_down_pressed():
	down = true

func _on_up_released():
	up = false

func _on_down_released():
	down = false
	$slide_sfx.stop()

