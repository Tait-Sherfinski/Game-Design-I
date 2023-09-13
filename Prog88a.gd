extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_btn_calc_pressed():
	var num1 = int($txtNum1.text)
	var num2 = int($txtNum2.text)
	var Sum = num1 + num2
	var Diff = num1 - num2
	var Product = num1 * num2
	var Average = Sum / 2
	var Absdiff = abs(Diff)
	var Max = 0 
	var Min = 0
	if num1 > num2:
		Max = num1
	else:
		Max = num2
		
	if Max == num1:
		Min = num2
	if Max == num2:
		Min = num1
		
	$lblOut.text = "Sum: " + str(Sum) + "\nDifference: " + str(Diff) + \
	"\nProduct: " + str(Product) + "\nAverage: " + str(Average) + \
	"\nAbsolute Distance: " + str(Absdiff) + "\nMaximum: " + str(Max) + \
	"\nMinimum: " + str(Min) 


func _on_btn_clear_pressed():
	$txtNum1.text = ""
	$txtNum2.text = ""
	$lblOut.text = ""


func _on_btn_exit_pressed():
	get_tree().quit()
