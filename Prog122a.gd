extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	$ItemList.add_item("Number     Square     Square Root")
	for num in range(1, 51):
		var numsq = num**2
		var numsqrt = sqrt(num)
		var line = "%d     %d     %.4f" % [num, numsq, numsqrt]
		$ItemList.add_item(line)


func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()
