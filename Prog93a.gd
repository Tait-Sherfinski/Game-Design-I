extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	var kwatts = int($LineEdit.text)
	var brate = round(kwatts * 0.0475)
	var scharge = round(brate * 0.1)
	var ctax = round(brate * 0.03)
	var total = round(brate + scharge + ctax)
	var ltotal = round(total * 1.04)
	$lblOut.text = "Base Rate: $" + str(brate) + "\nSurcharge: $" + \
	str(scharge) + "\nCity Tax: $" + str(ctax) + "\nPay this amount: $" + \
	str(total) + "\nPay this if late: $" + str(ltotal)


func _on_button_2_pressed():
	$lblOut.text = ""
	$LineEdit.text = ""


func _on_button_3_pressed():
	get_tree().quit()
