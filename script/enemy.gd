extends CharacterBody2D


@export var EnemySpeed = 3000.0

var vec_to_player: Vector2
var player = null

func _ready() -> void:
	add_to_group("Enemy")
	player = get_parent().get_parent().find_child("CharacterBubble")


func _physics_process(delta: float) -> void:
	if player == null:
		return

	vec_to_player = player.global_position - global_position
	vec_to_player = vec_to_player.normalized() * EnemySpeed * delta
	velocity = vec_to_player
	move_and_slide()


func _on_hitbox_area_entered(area: Area2D) -> void:
	queue_free() # Replace with function body.
