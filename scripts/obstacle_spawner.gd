extends Node2D

@onready var spawn_T: Timer = $spawn_Timer
var obstacle_scene: PackedScene = preload("res://scenes/obstacle.tscn")


func _on_spawn_timer_timeout() -> void:
	var obstacle = obstacle_scene.instantiate()
	obstacle.scale = Vector2.ONE * 5
	add_child(obstacle)


func start() -> void:
	spawn_T.start()


func stop() -> void:
	spawn_T.stop()
