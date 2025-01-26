extends CharacterBody2D


@export var Speed = 300.0





func _physics_process(delta: float) -> void:

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction_x := Input.get_axis("Left", "Right")
	var direction_y := Input.get_axis("Up", "Down")
	
	var vector := Vector2(direction_x, direction_y).normalized()
	
	if vector != Vector2.ZERO:
		velocity = vector * Speed 
	else:
		velocity.x = move_toward(velocity.x, 0, Speed)
		velocity.y = move_toward(velocity.y, 0, Speed)
	move_and_slide()


func reset():
	get_tree().reload_current_scene()


func _on_hitbox_area_entered(area: Area2D) -> void:
	queue_free()
