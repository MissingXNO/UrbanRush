extends CanvasLayer

onready var _transition_rect: = $scene_transition_rect

func update_score(points):
	$score_label.text = str(points)

func update_highscore(best):
	$best_score.text = str(best)

func _on_pause_button_pressed():
	get_tree().paused = true
	$pause_popup.show()


func _on_unpause_button_pressed():
	$pause_popup.hide()
	get_tree().paused = false


func _on_retry_button_pressed():
	$pause_popup.hide()
	get_tree().paused = false
	_transition_rect.transition_to("res://world.tscn")
