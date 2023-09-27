extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	$ItemList.add_item("Number     Cube Root     Cube")
	for num in range(-25, 25+1):
		var cube = num*num*num
		var cbexp = 1.0 / 3.0
		var cbrt = num**cbexp
		if num < 0:
			cbrt = ((abs(num)**cbexp) * -2) / 2
		var line = "%d               %.5f              \
		 %d" % [num, cbrt, cube]
		$ItemList.add_item(line)


func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()
