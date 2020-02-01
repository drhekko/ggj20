extends Node2D

export var speed = 300
var screen_size  # Size of the game window.
var item_select = ''

var velocity = Vector2()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():

	var PlayerReference = $Player

	
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
	
	if self.item_select != '':
		#res://assets/abono.jpg
		if Input.is_action_just_pressed("ui_select"):
			
			$selected_object.texture = load('res://assets/'+self.item_select+'.jpg')

func _on_Timer_timeout():
	$Timer.stop()
	game_over()
	
func game_over():
	print("i died cause i was slow")

