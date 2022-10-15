extends KinematicBody2D

export var speed = 500
export var gravity = 700
export var jump_speed = 500

var _velocity = Vector2.ZERO
var _double_jump = 2

func _physics_process(delta):
	var direction = Input.get_action_strength("right") - Input.get_action_strength("left")
	_velocity.x = direction * speed
	_velocity.y += gravity * delta
	if is_on_floor():
		_double_jump = 2
	if _double_jump and Input.is_action_just_pressed("jump"):
		_velocity.y = -jump_speed
		_double_jump -= 1
	_velocity = move_and_slide(_velocity, Vector2.UP)

	
	
