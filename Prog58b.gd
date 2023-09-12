extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	var A = int($lineEdit.text)
	var B = int($lineEdit2.text)
	var C = int($lineEdit3.text)


func _on_button_2_pressed():
	$LineEdit.text = ""
	$LineEdit2.text = ""
	$LineEdit3.text = ""
	$lblOut.text = ""
