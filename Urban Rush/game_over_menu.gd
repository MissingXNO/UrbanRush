extends Control

onready var _transition_rect: = $scene_transition_rect
var highscore = 0
const SAVE_FILE_PATH = "user://savedata.save"







func _ready():
	var save_data = File.new()
	if save_data.file_exists(SAVE_FILE_PATH):
		save_data.open(SAVE_FILE_PATH, File.READ)
		highscore = save_data.get_var()
		save_data.close()

	$best.text = str(highscore)







func _on_exit_button_pressed():
	
	_transition_rect.transition_to("res://main_menu.tscn")

func _on_retry_button_pressed():
	
	_transition_rect.transition_to("res://world.tscn")
	
	
