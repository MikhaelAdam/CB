extends Node

func add_to_2D(node: Node2D) -> void:
	$"2DWorld".add_child(node)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
