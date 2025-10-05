# Este es tu script mundo.gd

extends Node
@export var player: CharacterBody2D

func _ready():
	player.player_died.connect(_on_player_died)

func _on_player_died():
	# Esta línea ahora cambia el juego a tu pantalla de Game Over.
	get_tree().change_scene_to_file("res://game_over_screen.tscn")
