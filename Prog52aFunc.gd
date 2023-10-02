extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func getArea(length, width):
	var area = length * width
	return area
	
func getPerim(length, width):
	return 2 * length + 2 * width


func _on_button_pressed():
	var len = int($txtLen.text)
	var wid = int($txtWid.text)
	var a = getArea(len, wid)
	var p = getPerim(len, wid) 
	$Label3.text = "Area: %d\nPerimeter: %d" % [a, p]


func _on_button_2_pressed():
	$txtLen.text = ""
	$txtWid.text = ""
	$Label3.text = ""


func _on_button_3_pressed():
	get_tree().quit()
