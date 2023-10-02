extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	var num = int($LineEdit.text)
	var Sum = 0
	var lcv = 0
	while lcv < num:
		Sum += lcv
		lcv += 2
		var line = "%d     %d" % [lcv, Sum]
		$ItemList.add_item(line)
