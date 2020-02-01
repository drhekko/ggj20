extends Node2D

export var speed = 300
var screen_size  # Size of the game window.


var velocity = Vector2()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	
	
func _process(delta):
	var velocity = Vector2() #the player movement vector

	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
			
	position += velocity * delta
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
	position += velocity * delta
	
	if Globalvar.item_selected != '':
		#res://assets/abono.jpg
		print('res://assets/'+Globalvar.item_selected+'.jpg')
		$selected_object.texture = load('res://assets/'+Globalvar.item_selected+'.jpg')

func player_dead():
	print("Tas muelto")
