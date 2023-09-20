extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	var eggs = int($txtEggs.text)
	var dozen = int(eggs / 12)
	var price = 0.0
	var cost = 0.0
	var extra = eggs % (dozen * 12)
	var extrap = (price * (1/12)) * extra
	if dozen < 4:
		price = 0.50
	elif dozen >= 4 and dozen < 6:
		price = 0.45
	elif dozen >= 6 and dozen < 11:
		price = 0.40
	elif dozen >= 11:
		price = 0.35
		return
			
	cost = (price * dozen) + extrap
	$Label2.text = "The bill is $" + str(cost)
