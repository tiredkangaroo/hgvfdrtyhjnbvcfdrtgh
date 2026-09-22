extends Node2D

var asteroid = preload("res://asteroid.tscn")
var hearts = 5
var score = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	#print(get_node("FloorRB").get_colliding_bodies())

func _on_timer_timeout() -> void:
	# spawn new asteroid
	print("new asteeroiads")
	var ast: RigidBody2D = asteroid.instantiate()
	ast.add_to_group("asteroids")
	add_child(ast)
	ast.position.x = randi_range(100, 1100)
	ast.position.y = -100
	get_node("Timer").start()

func update_hearts():
	if hearts == 0:
		get_tree().change_scene_to_file("res://game_over.tscn")
		return
	for i in range(5):
		
		var heart: Sprite2D = get_node("Heart%d" % (i + 1))
		heart.visible = false
	for i in range(hearts):
		var heart: Sprite2D = get_node("Heart%d" % (i+1))
		heart.visible = true

func update_score():
	var label: Label = get_node("Label")
	label.text = "score: %d" % score

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("asteroids"):
		hearts -= 1
		update_hearts()
