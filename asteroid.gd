extends TextureRect

var speed = 400;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("im here")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# continously go down
	var p = get_parent()
	if p.position.y > 900:
		p.get_parent().score += 1;
		p.get_parent().update_score();
		queue_free()
		print("by by i go die now")
