extends Control

onready var _transition_rect: = $scene_transition_rect







func _ready():
	pass







func _on_exit_button_pressed():
	
	_transition_rect.transition_to("res://main_menu.tscn")

