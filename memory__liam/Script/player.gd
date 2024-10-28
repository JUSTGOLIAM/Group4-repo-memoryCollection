extends CharacterBody2D


const SPEED = 100.0
var current_dir = "none"

func _physics_process(delta):
	player_movement(delta)
	

func player_movement(delta):
	
	if Input.is_action_pressed("right"):
		current_dir = "right"
		velocity.x = SPEED
		velocity.y = 0
 
	elif Input.is_action_pressed("left"):
		current_dir = "left"
		velocity.x = -SPEED
		velocity.y = 0
		
	elif Input.is_action_pressed("front"):
		current_dir = "down"
		velocity.y = SPEED
		velocity.x = 0
		
	elif Input.is_action_pressed("back"):
		current_dir = "up"
		velocity.y = -SPEED
		velocity.x = 0
		
	else:
		velocity.x = 0
		velocity.x = 0 
		
	move_and_slide()
