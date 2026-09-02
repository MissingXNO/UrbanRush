extends Control

onready var _transition_rect: = $scene_transition_rect

func _ready():
	$BGM.play()


func _on_play_button_pressed() -> void :
	
	_transition_rect.transition_to("res://world.tscn")


func _on_exit_button_pressed():
	get_tree().quit()


func _on_music_button_pressed():
	$background / music_button / dj_sfx.play()
	if $BGM.stream_paused == false:
		$BGM.stream_paused = true
	else:
		$BGM.stream_paused = false


func _on_options_button_pressed():
	
	
	$options_popup.show()
	


func _on_close_options_pressed():
	$options_popup.hide()


