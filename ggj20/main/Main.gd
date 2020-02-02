extends Node2D
export (PackedScene) var flowy_2

func _ready():
	life()

func _process(delta):
	pass

func _on_Timer_timeout():
	$Timer.stop()
	game_over()

func game_over():
	$Player.player_dead()
	get_tree().change_scene("res://Game_Over/GameOverScreen.tscn")
	
func life():
	print(int($Timer.time_left))
	$CanvasLayer/GUI/HBoxContainer/bars/bar/Gauge.value = int($Timer.time_left)



func _on_1seg_timeout():
	life()
	if(int($Timer.time_left)==0):
		$"1seg".stop()


func _on_flowey_body_entered(body):
	if $Abono.picked == true:
		var bodies = $Abono/detector.get_overlapping_bodies()
		for b in bodies:
			if b.name == "Player" and $Abono.picked == true:
				$Abono.picked = false
				print("flow")
				var newFlowy = get_tree().get_nodes_in_group("Main")[0].Flowy2.instance()
				get_tree().get_nodes_in_group("Main")[0].add_child(newFlowy)
				newFlowy.global.position = $flowey.global.position
				$flowey.queue_free()
				$Abono.queue_free()
				print("Objeto pa la planta")
	else:
		print("no tienes nada")
