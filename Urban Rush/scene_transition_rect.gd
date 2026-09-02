extends ColorRect

onready var _transition_rect: = $scene_transition_rect


export (String, FILE, "*.tscn") var next_scene_path

onready var _anim_player: = $AnimationPlayer


func _ready() -> void :
	_anim_player.play_backwards("fade")
	
	
func transition_to(_next_scene: = next_scene_path) -> void :
	
	_anim_player.play("fade")
	yield(_anim_player, "animation_finished")
	
	get_tree().change_scene(_next_scene)





