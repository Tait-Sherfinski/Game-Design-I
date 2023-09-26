extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	$ItemList.add_item("X     Y")
	for num in range(-12, 16+1):
		var y = num**6 - (3*num**5) - (93*num**4) + (87*num**3) + (1596*num**2) - (1380*num) - 2800
		var line = "%d     %d" % [num, y]
		$ItemList.add_item(line)


func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()
