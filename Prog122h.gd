extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	$ItemList.add_item("Number     Square     Square Root     Cube     Fourth Root")
	for num in range(1, 20+1):
		var square = num * num
		var sqrt = sqrt(num)
		var cube = num*num*num
		var froot = sqrt(sqrt)
		var line = "%d               %d              \
		 %.4f               %d              \
		 %.4f" % [num, square, sqrt, cube, froot]
		$ItemList.add_item(line)


func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()
