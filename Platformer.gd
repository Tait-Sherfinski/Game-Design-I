extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$World/CollisionPolygon2D/Polygon2D.polygon = $World/CollisionPolygon2D.polygon



func _on_exit_body_entered(body):
	if body.name == "Keyboard_player":
		OS.alert("You won!")
		body.queue_free()
