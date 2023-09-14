extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func round_to_dec(num, digit):
	return round(num * pow(10.0, digit)) / pow(10.0, digit)


func _on_button_pressed():
	var kwatts = int($LineEdit.text)
	var brate = round_to_dec(kwatts * 0.0475, 2)
	var scharge = round_to_dec(brate * 0.1, 2)
	var ctax = round_to_dec(brate * 0.03, 2)
	var total = round_to_dec(brate + scharge + ctax, 2)
	var ltotal = round_to_dec(total * 1.04, 2)
	$lblOut.text = "Base Rate: $" + str(brate) + "\nSurcharge: $" + \
	str(scharge) + "\nCity Tax: $" + str(ctax) + "\nPay this amount: $" + \
	str(total) + "\nPay this if late: $" + str(ltotal)


func _on_button_2_pressed():
	$lblOut.text = ""
	$LineEdit.text = ""


func _on_button_3_pressed():
	get_tree().quit()
