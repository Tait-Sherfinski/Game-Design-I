extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	var num1 = int($LineEdit.text)
	var num2 = int($LineEdit2.text)
	var num3 = int($LineEdit3.text)
	var num4 = int($LineEdit4.text)
	var sum = num1 + num2 + num3 + num4
	var average = sum / 4
	$Label5.text = "Sum: " + str(sum)
	$Label6.text = "Average: " + str(average)


func _on_button_2_pressed():
	$LineEdit.text = ""
	$LineEdit2.text = ""
	$LineEdit3.text = ""
	$LineEdit4.text = ""
	$Label5.text = ""
	$Label6.text = ""


func _on_button_3_pressed():
	get_tree().quit()
