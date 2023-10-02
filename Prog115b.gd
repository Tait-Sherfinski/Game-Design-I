extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	for num in range(2, 36+1, 2):
		var line = "%d" % num
		$Label.text = line


func _on_button_2_pressed():
	$Label.text = ""


func _on_button_3_pressed():
	get_tree().quit()
