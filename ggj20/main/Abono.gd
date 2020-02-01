extends RigidBody2D

var picked = false

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _physics_process(delta):
	if picked==true:
		self.position=get_node("../Player/Position2D").global_position
		sleeping = true
	else:
		sleeping = false
	
func _input(event):
	if Input.is_action_just_pressed("ui_select"):
		var bodies = $detector.get_overlapping_bodies()
		for b in bodies:
			if b.name == "Player" and picked == false:
				picked = true
				print("Objeto tomado")
	
	if Input.is_action_just_pressed("ui_cancel") and picked == true:
		picked = false
		print("soltaste el objeto") 