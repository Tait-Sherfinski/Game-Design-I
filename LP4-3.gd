extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	var eggs = int($txtEggs.text)
	var price = 0.0
	var cost = 0.0
	var dozens = floor(eggs / 12)
	var extrap = eggs % 12
	
	if eggs > 0 and eggs < 48:
		price = 0.50 * dozens
	elif eggs >= 48 and eggs < 72:
		price = 0.45 * dozens
	elif eggs >= 72 and eggs < 132:
		price = 0.40 * dozens
	elif eggs >= 132:
		price = 0.35 * dozens
		
	cost = price
	
	$Label2.text = "The price is $" + str(price)


func _on_button_2_pressed():
	$Label2.text = ""


func _on_button_3_pressed():
	get_tree().quit()
