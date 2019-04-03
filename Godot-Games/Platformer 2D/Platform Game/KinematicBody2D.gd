extends KinematicBody2D

# Movement Variables
const UP = Vector2(0, -1)
var motion = Vector2()
var speed = 190

# Jumping Variables
var jumps = 2
var gravity = 9
var jump_force = -390

func _physics_process(delta):
	motion.y += gravity;
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
		
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
		
	else: 
		motion.x = 0
		
	if jumps >= 1:
		if Input.is_action_just_pressed("ui_up"):
			motion.y = jump_force
			jumps = jumps - 1
		else:
			motion.y += gravity

	motion  = move_and_slide(motion, UP)