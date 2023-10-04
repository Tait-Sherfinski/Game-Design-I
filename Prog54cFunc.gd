extends Control

func getArea(radius):
	var area = 3.14 * (radius * radius)
	return area
	
func getCirc(radius):
	var circ = (radius * 2) * 3.14
	return circ


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	var radius = float($LineEdit.text)
	var a = getArea(radius)
	var c = getCirc(radius)
	$Label2.text = "Area: %.3f\nCircumference: %.3f" % [a, c]


func _on_button_2_pressed():
	$LineEdit.text = ""
	$Label2.text = ""


func _on_button_3_pressed():
	get_tree().quit()
