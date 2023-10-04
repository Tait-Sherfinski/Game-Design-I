extends Control
	
var num1 = 0
var num2 = 0
var result = 0

func get_nums():
	num1 = int($LineEdit.text)
	num2 = int($LineEdit2.text)

func add():
	get_nums()
	result = num1 + num2
func sub():
	get_nums()
	result = num1 - num2
func multiply():
	get_nums()
	result = num1 * num2
func divide():
	get_nums()
	result = num1 / num2
func expo():
	get_nums()
	result = num1**num2
func mod():
	get_nums()
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
