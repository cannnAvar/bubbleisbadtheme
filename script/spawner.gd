extends Node2D

@export var Base_damage := 40
@export var PeriodSpawn := 10

var can: int


func _ready() -> void:
	can = Base_damage


func spawn_enemy(): 
	var enemy = preload("res://scene/enemy.tscn").instantiate()  # Instance the enemy scene
	enemy.position = $Marker2D.position  # Set the position where you want the enemy
	add_child(enemy)  # Add the enemy as a child of the current node


func _on_timer_timeout() -> void:
	spawn_enemy()
