extends Node2D

@onready var obstacle_spawner: Node2D = $obstacle_spawner

func _on_bird_game_started() -> void:
	obstacle_spawner.start()
