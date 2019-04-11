extends KinematicBody2D

# Movement Variables
const UP = Vector2(0, -1)
var motion = Vector2()
export var speed = 190

# Jumping Variables
export var gravity = 9
export var jump_force = -350

func _physics_process(delta):
	motion.y += gravity;
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
	else: 
		motion.x = 0
	if Input.is_action_just_pressed("ui_up"):
		motion.y = jump_force
	motion = move_and_slide(motion, UP)