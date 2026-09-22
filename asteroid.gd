extends TextureRect

var speed = 400;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("im here")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# continously go down
	if position.y > 900:
		get_parent().remove_child(self)
		print("by by i go die now")
