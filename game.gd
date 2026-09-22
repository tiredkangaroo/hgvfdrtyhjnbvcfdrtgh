extends Node2D

var asteroid = preload("res://asteroid.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_timer_timeout() -> void:
	# spawn new asteroid
	print("new asteeroiads")
	var ast: RigidBody2D = asteroid.instantiate()
	add_child(ast)
	ast.position.x = randi_range(100, 1100)
	ast.position.y = -100
	get_node("Timer").start()
