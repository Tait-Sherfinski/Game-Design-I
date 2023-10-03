extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
var num1 = int($LineEdit.text)
var num2 = int($LineEdit2.text)
var result = 0

func add():
	result = num1 + num2
func sub():
	result = num1 - num2
func multiply():
	result = num1 * num2
func divide():
	result = num1 / num2
func expo():
	result = num1**num2
func mod():
	result = num1 % num2
	
func update():
	$Label4.text = "Result: %d" % result


func _on_button_pressed():
	add()
	update()


func _on_button_2_pressed():
	sub()
	update()


func _on_button_3_pressed():
	multiply()
	update()


func _on_button_4_pressed():
	expo()
	update()


func _on_button_5_pressed():
	divide()
	update()


func _on_button_6_pressed():
	mod()
	update()
