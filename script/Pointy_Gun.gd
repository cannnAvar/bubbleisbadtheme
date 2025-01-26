extends Node2D

const BULLET = preload("res://scene/pointy.tscn") 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	look_at(get_global_mouse_position())


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("Shoot"):
		var _bullet_instance = BULLET.instantiate()
		get_parent().add_child(_bullet_instance)
		_bullet_instance.global_position = %Point.global_position
		_bullet_instance.rotation = rotation
