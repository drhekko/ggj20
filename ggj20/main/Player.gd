extends KinematicBody2D

export var speed = 300
onready var sprite = get_node('AnimatedSprite')
var velocity = Vector2()

func _process(delta):
	velocity = Vector2()
	if Input.is_action_pressed('ui_right'):
		velocity.x += 1

		self.sprite.flip_h = false
	if Input.is_action_pressed('ui_left'):
		velocity.x -= 1

		self.sprite.flip_h = true
	if Input.is_action_pressed('ui_down'):

		velocity.y += 1
	if Input.is_action_pressed('ui_up'):

		velocity.y -= 1
		
	if velocity.x != 0 || velocity.y != 0:
		self.sprite.play('movimiento')
	else:
		self.sprite.play('reposo')
	
	var movement = speed*velocity.normalized()*delta
	self.move_and_collide(movement)


func player_dead():
  print("Tas muelto")