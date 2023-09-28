extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	for num in range(3, 9669+1, 3):
		var sum = (3 + 9669) * 3223 / 2
		var line = "%d" % [num]
		$ItemList.add_item(line)
		$Label.text = "The sum of multiples of 3, from 3 to 9669 is: " + str(sum)


func _on_button_2_pressed():
	$ItemList.clear()
	$Label.text = ""


func _on_button_3_pressed():
	get_tree().quit()
