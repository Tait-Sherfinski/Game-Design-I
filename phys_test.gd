extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Panel/HSlider.value = $someShape.gravity_scale


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	
func _input(event):
	if event is InputEventMouseButton and event.pressed:
		var nsquare = preload("res://some_shape.tscn").instantiate()
		nsquare.position = event.position
		add_child(nsquare)


func _on_h_slider_value_changed(value):
	for child in get_children():
		if child is RigidBody2D:
			child.gravity_scale = value


func _on_button_pressed():
	$someShape.gravity_scale = 1
	$Panel/HSlider.value = $someShape.gravity_scale
	$someShape.visible = false
	for child in get_children():
		if child is RigidBody2D:
			remove_child(child)
