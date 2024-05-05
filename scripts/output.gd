extends TextEdit

func _process(delta):
	if name == "input":
		text = gamejolt.input
	else:
		text = gamejolt.output #gamejolt.result will give you a dictionary of the data if you don't want a string
