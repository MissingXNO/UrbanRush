extends Node2D

export (PackedScene) var ob1
export (PackedScene) var ob2
export (PackedScene) var ob3
export (PackedScene) var ob4
export (PackedScene) var ob5
export (PackedScene) var ob6
export (PackedScene) var ob7
export (PackedScene) var ob8
export (PackedScene) var coin

const SAVE_FILE_PATH = "user://savedata.save"
var score = 0
var highscore = 0
var ob_num
var spawn






func _ready():
	_load_highscore()
	
	$data_canvas.update_highscore(highscore)
	$BGM.play()

func _process(delta):
	if $player.position.y > 80:
		$Camera2D.zoom.y = 0.5
	else:
		
		$Camera2D.zoom.y = - 0.00135 * $player.position.y + 0.60869
	$Camera2D.zoom.y = clamp($Camera2D.zoom.y, 0.1, 0.6)
	$Camera2D.zoom.x = $Camera2D.zoom.y
	$data_canvas.update_score(score)

func _on_score_timer_timeout():
	score += 1


func _on_spawn_ob_timeout():
	ob_num = randi() % 9
	spawn = randi() % 10
	if ob_num == 0:
		var o1 = ob1.instance()
		add_child(o1)
		if spawn < 4:
			var c = coin.instance()
			add_child(c)
			c.position.x = 336
			c.position.y = 72
			c.connect("body_entered", self, "_on_coin_body_entered")
			
			var c2 = coin.instance()
			add_child(c2)
			c2.position.x = 400
			c2.position.y = 32
			c2.connect("body_entered", self, "_on_coin_body_entered")
			
			var c3 = coin.instance()
			add_child(c3)
			c3.position.x = 430
			c3.position.y = 32
			c3.connect("body_entered", self, "_on_coin_body_entered")
			
			var c4 = coin.instance()
			add_child(c4)
			c4.position.x = 460
			c4.position.y = 32
			c4.connect("body_entered", self, "_on_coin_body_entered")
			
			var c5 = coin.instance()
			add_child(c5)
			c5.position.x = 366
			c5.position.y = 72
			c5.connect("body_entered", self, "_on_coin_body_entered")
					
	elif ob_num == 1:
		var o2 = ob2.instance()
		add_child(o2)
		if spawn < 4:
			var c = coin.instance()
			add_child(c)
			c.position.x = 336
			c.position.y = 8
			c.connect("body_entered", self, "_on_coin_body_entered")
						
	elif ob_num == 2:
		var o3 = ob3.instance()
		add_child(o3)
		if spawn < 4:
			var c = coin.instance()
			add_child(c)
			c.position.x = 336
			c.position.y = 32
			c.connect("body_entered", self, "_on_coin_body_entered")
			
			var c2 = coin.instance()
			add_child(c2)
			c2.position.x = 336
			c2.position.y = 8
			c2.connect("body_entered", self, "_on_coin_body_entered")

	elif ob_num == 3:
		var o4 = ob4.instance()
		add_child(o4)
		if spawn < 4:
			var c = coin.instance()
			add_child(c)
			c.position.x = 336
			c.position.y = 64
			c.connect("body_entered", self, "_on_coin_body_entered")
		
		
	elif ob_num == 4:
		var o5 = ob5.instance()
		add_child(o5)
		o5.connect("input_event", self, "_on_ob5_input_event")
		
		
	elif ob_num == 5:
		var o6 = ob6.instance()
		add_child(o6)
		if spawn < 4:
			var c = coin.instance()
			add_child(c)
			c.position.x = 328
			c.position.y = 112
			c.connect("body_entered", self, "_on_coin_body_entered")

			var c2 = coin.instance()
			add_child(c2)
			c2.position.x = 358
			c2.position.y = 112
			c2.connect("body_entered", self, "_on_coin_body_entered")

			var c3 = coin.instance()
			add_child(c3)
			c3.position.x = 388
			c3.position.y = 112
			c3.connect("body_entered", self, "_on_coin_body_entered")

	elif ob_num == 6:
		var o7 = ob7.instance()
		add_child(o7)
		if spawn < 4:
			var c = coin.instance()
			add_child(c)
			c.position.x = 375
			c.position.y = 48
			c.connect("body_entered", self, "_on_coin_body_entered")
			
			var c2 = coin.instance()
			add_child(c2)
			c2.position.x = 405
			c2.position.y = 48
			c2.connect("body_entered", self, "_on_coin_body_entered")
			
			var c3 = coin.instance()
			add_child(c3)
			c3.position.x = 375
			c3.position.y = 30
			c3.connect("body_entered", self, "_on_coin_body_entered")
			
			var c4 = coin.instance()
			add_child(c4)
			c4.position.x = 405
			c4.position.y = 30
			c4.connect("body_entered", self, "_on_coin_body_entered")
		
	elif ob_num == 7:
		var o8 = ob8.instance()
		add_child(o8)
		if spawn < 4:
			var c = coin.instance()
			add_child(c)
			c.position.x = 328
			c.position.y = 40
			c.connect("body_entered", self, "_on_coin_body_entered")
		
			var c2 = coin.instance()
			add_child(c2)
			c2.position.x = 368
			c2.position.y = 40
			c2.connect("body_entered", self, "_on_coin_body_entered")
			
			var c3 = coin.instance()
			add_child(c3)
			c3.position.x = 368
			c3.position.y = 68
			c3.connect("body_entered", self, "_on_coin_body_entered")
	else:
		if spawn < 4:
			var c2 = coin.instance()
			add_child(c2)
			c2.position.x = 400
			c2.position.y = 32
			c2.connect("body_entered", self, "_on_coin_body_entered")
			
			var c3 = coin.instance()
			add_child(c3)
			c3.position.x = 430
			c3.position.y = 32
			c3.connect("body_entered", self, "_on_coin_body_entered")
			
			var c4 = coin.instance()
			add_child(c4)
			c4.position.x = 460
			c4.position.y = 32
			c4.connect("body_entered", self, "_on_coin_body_entered")
		
		else:
			var c = coin.instance()
			add_child(c)
			c.position.x = 328
			c.position.y = 112
			c.connect("body_entered", self, "_on_coin_body_entered")

			var c2 = coin.instance()
			add_child(c2)
			c2.position.x = 358
			c2.position.y = 112
			c2.connect("body_entered", self, "_on_coin_body_entered")

			var c3 = coin.instance()
			add_child(c3)
			c3.position.x = 388
			c3.position.y = 112
			c3.connect("body_entered", self, "_on_coin_body_entered")
			

			

func _on_coin_body_entered(body):
	score += 10
	$coin_sfx.play()


func _on_ob5_input_event(viewport, event, shape_idx):
	$scratch_sfx.play()


func _on_wall_detector_body_entered(body):
	if score > highscore:
		highscore = score
		_save_highscore()
	print(highscore)
		
func _save_highscore():
	var save_data = File.new()
	save_data.open(SAVE_FILE_PATH, File.WRITE)
	save_data.store_var(highscore)
	save_data.close()

func _load_highscore():
	var save_data = File.new()
	if save_data.file_exists(SAVE_FILE_PATH):
		save_data.open(SAVE_FILE_PATH, File.READ)
		highscore = save_data.get_var()
		save_data.close()
