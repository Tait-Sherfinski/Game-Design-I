extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	for num in range(2, 11):
		var col2 = num + 1
		var col3 = num * 2
		var col4 = num*num
		var line = "%d     %d     %d     %d" % [num, col2, col3, col4]
		$ItemList.add_item(line)


func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()
