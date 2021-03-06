extends RigidBody2D

onready var anim = get_node("sasa_anim")

const WALK_SPEED = 150
const JUMP_SPEED = 300

var xVelocity = 0
var yVelocity = 0 

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		xVelocity = -WALK_SPEED
		get_node("sasa_anim").set_flip_h(false)
		anim.play("walk")
	elif Input.is_action_just_pressed("ui_up") && !test_motion(Vector2(xVelocity,JUMP_SPEED), 0.08, Physics2DTestMotionResult.new()):
		yVelocity = -JUMP_SPEED
	elif Input.is_action_pressed("ui_right"):
		xVelocity = WALK_SPEED
		get_node("sasa_anim").set_flip_h(true)
		anim.play("walk")
	else:
		xVelocity = 0
		yVelocity = 0
		anim.play("idle")

    # We don't need to multiply velocity by delta because MoveAndSlide already takes delta time into account.

    # The second parameter of move_and_slide is the normal pointing up.
    # In the case of a 2d platformer, in Godot upward is negative y, which translates to -1 as a normal.
	set_axis_velocity(Vector2(xVelocity, yVelocity))
