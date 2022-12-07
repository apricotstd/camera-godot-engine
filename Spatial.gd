extends Spatial

var speed: float = 0.1
var mesh: Object = null
# Called when the node enters the scene tree for the first time.
func _ready():
	mesh = get_node("CSGBox")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass
