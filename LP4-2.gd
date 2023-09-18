extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	var weight = int($txtWeight.text)
	var len = int($txtLen.text)
	var wid = int($txtWid.text)
	var height = int($txtHeight.text)
	var size = len * wid * height
	if weight > 27 and size < 100000:
		$lblOut.text = "Too Heavy"
	elif weight < 27 and size > 100000:
		$lblOut.text = "Too large"
	elif weight > 27 and size > 100000:
		$lblOut.text = "Too Heavy and Too Large"
	elif weight < 27 and size < 100000:
		$lblOut.text = "Valid"
	
	
	
	


func _on_button_2_pressed():
	$txtWeight.text = ""
	$txtLen.text = ""
	$txtWid.text = ""
	$txtHeight.text = ""


func _on_button_3_pressed():
	get_tree().quit()
