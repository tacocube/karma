extends KinematicBody2D

onready var anim = get_node("sasa_anim")

const GRAVITY = 0
const WALK_SPEED = 200

var velocity = Vector2()

func _physics_process(delta):
	velocity.y += delta * GRAVITY
	
	if Input.is_action_pressed("ui_left"):
		velocity.x = -WALK_SPEED
		get_node("sasa_anim").set_flip_h(false)
		anim.play("walk")
	elif Input.is_action_pressed("ui_right"):
		velocity.x =  WALK_SPEED
		get_node("sasa_anim").set_flip_h(true)
		anim.play("walk")
	else:
		anim.play("idle")
		velocity.x = 0

    # We don't need to multiply velocity by delta because MoveAndSlide already takes delta time into account.

    # The second parameter of move_and_slide is the normal pointing up.
    # In the case of a 2d platformer, in Godot upward is negative y, which translates to -1 as a normal.
	move_and_slide(velocity, Vector2(0, -1))