extends KinematicBody2D

# Movement Variables
const UP = Vector2(0, -1)
var motion = Vector2()
var speed = 190

# Jumping Variables
var jumps = 1 # Because of how is_on_floor method works, jumps = jumps + 1 (this is a double jump)
var gravity = 9
var jump_force = -350

func _physics_process(delta):
	motion.y += gravity;
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
	else: 
		motion.x = 0
	if Input.is_action_just_pressed("ui_up"):
		if jumps >= 1:
			if is_on_floor():
				motion.y = jump_force
				jumps = jumps - 1
			else:
				motion.y = jump_force
				jumps = jumps - 1
		else:
			motion.y += gravity		
	if is_on_floor():
		jumps = 1
	motion  = move_and_slide(motion, UP)