extends CharacterBody2D

var SPEED = -200


func _physics_process(delta: float) -> void:
	velocity.x = SPEED
	
	if global_position.x < -200:
		queue_free()
	
	
	move_and_slide()


func _on_topspike_body_entered(body: Node2D) -> void:
	if body is bird:
		print("top")


func _on_bottomspike_body_entered(body: Node2D) -> void:
	if body is bird:
		print("bottom")


func _on_passarea_body_entered(body: Node2D) -> void:
	if body is bird:
		print("SCORE")
