class_name BaseItem extends Node2D

var value
var flicker_state = false
var flicker_start_time = 10.0
var flicker_interval = 0.1
var current_time = 0.0
var time_to_despawn = 13

func _ready():
	pass

func remove():
	value = 0
	queue_free()
	
func interact(player):
	pass
	remove()
	
func _init(default_value: int = 1):
	value = default_value

func _process(delta):
	for player in get_tree().get_nodes_in_group("player"):
		if $Area2D.overlaps_body(player):
			interact(player)
	current_time += delta
	if current_time >= flicker_start_time and current_time <= time_to_despawn:
		$AnimatedSprite2D.visible = fmod(current_time, flicker_interval) \
		< (flicker_interval / 2)
	if current_time >= time_to_despawn:
		remove()
