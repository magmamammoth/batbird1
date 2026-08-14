extends CharacterBody2D
class_name bird


#VARS
var JUMP_CONST = 550
var GRAVITY = 980
var jump_count = 0
signal game_started


#GRAVITY and jump btw
func _physics_process(delta: float):
	velocity.y += GRAVITY * delta
	
	if Input.is_action_just_pressed("jump"):
		jump_count +=1
		if jump_count == 1:
			start_game()
		
		
		
		velocity.y = -JUMP_CONST
	
	if position.y > 1000:
		die()
	
	move_and_slide()


func start_game():
	game_started.emit()


func die():
	get_tree().paused = true
	await get_tree().create_timer(1).timeout
	get_tree().paused = false
	get_tree().reload_current_scene()
