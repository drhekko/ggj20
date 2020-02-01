extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	
	for button in $Menu/CenterRow/Buttons.get_children():
		if button.scene_to_load:
			button.connect('pressed', self, '_On_Button_pressed', [button.scene_to_load])
		else:
			button.connect('pressed', self, '_Close_Game')	


func _Close_Game():
	get_tree().quit()

func _On_Button_pressed(scene_to_load):
	get_tree().change_scene(scene_to_load)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
