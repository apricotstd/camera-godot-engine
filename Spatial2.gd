extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var shot: Object = preload("res://Shot.tscn") 
var speedShot:float = 5
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_node("CSGBox").rotate_z(delta)
	pass

func _on_Shot_timeout():
	var shots = shot.instance()
	add_child(shots)
	shots.add_force(Vector3(0,speedShot,0), get_node("CSGBox").rotation_degrees)
	pass # Replace with function body.
