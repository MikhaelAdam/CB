extends Node
class_name GameControl
@export var _2d_world: Node2D 
@export var gui: Control 

var current_2d_scene
var current_gui_scene:Control


func _ready() -> void:
	Global.game_control = self 

func change_gui_scene(new_scene: String,delete:bool = true, run:bool = false) -> void:
	if current_gui_scene != null:
		if delete:
			current_gui_scene.queue_free()
		elif run:
			current_gui_scene.visible = false
		else:
			gui.remove_child(current_gui_scene)
	var new = load(new_scene).instantiate()
	gui.add_child(new)
	current_gui_scene = new

func change_2d_scene(new_scene: String,delete:bool = true, run:bool = false) -> void:
	if current_2d_scene != null:
		if delete:
			current_2d_scene.queue_free()
		elif run:
			current_2d_scene.visible = false
		else:
			_2d_world.remove_child(current_2d_scene)
	var new = load(new_scene).instantiate()
	_2d_world.add_child(new)
	current_2d_scene = new

func _process(delta: float) -> void:
	pass
