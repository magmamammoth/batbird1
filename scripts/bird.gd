extends CharacterBody2D

#VARS
var JUMP_CONST = 550
var GRAVITY = 980

#GRAVITY and jump btw
func _physics_process(delta: float):
	velocity.y += GRAVITY * delta
	
	if Input.is_action_just_pressed("jump"):
		print("jumped")
		velocity.y = -JUMP_CONST
	
	move_and_slide()
