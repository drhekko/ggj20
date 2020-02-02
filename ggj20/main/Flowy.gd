extends RigidBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var sprite = get_node('AnimatedSprite')
# Called when the node enters the scene tree for the first time.
func _ready():
	self.sprite.play('flowy_lvl_one')

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
