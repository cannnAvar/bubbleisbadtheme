extends Area2D


@export var Speed := 500.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
func _physics_process(delta: float) -> void:
	var direction = Vector2.RIGHT.rotated(rotation)
	position += direction * Speed * delta 
	

func _on_body_entered(body: Node2D) -> void:
	queue_free()
