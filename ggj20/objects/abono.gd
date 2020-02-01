extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var Globalvar
# Called when the node enters the scene tree for the first time.
func _ready():
	#pass
	Globalvar = get_tree().get_root().get_node("/root/Globalvar")
	#PlayerReference = preload("res://Player/Player.tscn")
	#PlayerReference = load("res://Player/Player.tscn")

func _input(event):
	if Input.is_action_just_pressed("ui_select"):
		var bodies = self.get_overlapping_bodies()
		for b in bodies:
			if b.name == "Player":
				Globalvar.item_selected = 'abono'
				self.queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
