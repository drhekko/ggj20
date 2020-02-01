extends Node2D

func _ready():
	life()

func _process(delta):
	pass

func _on_Timer_timeout():
	$Timer.stop()
	game_over()

func game_over():
	$Player.player_dead()
	
func life():
	print(int($Timer.time_left))
	$CanvasLayer/GUI/HBoxContainer/bars/bar/Gauge.value = int($Timer.time_left)



func _on_1seg_timeout():
	life()
	if(int($Timer.time_left)==0):
		$"1seg".stop()
