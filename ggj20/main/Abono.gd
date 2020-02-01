extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# Called when the node enters the scene tree for the first time.
var selected_item

func _ready():
	selected_item = ''
	pass
	
func _input(event):

	if Input.is_action_just_pressed("ui_select"):
		var bodies = self.get_overlapping_bodies()
		for b in bodies:
			if b.name == "Player":
				self.selected_item = 'abono'
				self.position.x = 100
				self.position.y = 100
				#self.queue_free()