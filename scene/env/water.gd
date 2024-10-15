extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$CollisionShape2D.shape.size = $Sprite2D.region_rect.size



func _on_timer_timeout() -> void:
	$Sprite2D.region_rect.size.x += 32
	$Sprite2D.region_rect.size.y += 32
