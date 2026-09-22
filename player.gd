extends RigidBody2D

var speed = 900

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var direction = Input.get_axis("ui_left", "ui_right")
	linear_velocity.x = direction * speed
	linear_velocity.y = Input.get_axis("ui_up", "ui_down") * speed;
