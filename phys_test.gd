extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	
func _input(event):
	pass


func _on_h_slider_value_changed(value):
	pass


func _on_button_pressed():
	for child in get_children():
		if child is RigidBody2D:
			child.apply_central_impulse(Vector2.RIGHT * 500)


func _on_h_slider_2_value_changed(value):
	pass


func _on_button_2_pressed():
	for child in get_children():
		if child is RigidBody2D:
			child.apply_central_impulse(Vector2.LEFT * 500)
