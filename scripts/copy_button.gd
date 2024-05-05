extends LinkButton

func _on_LinkButton_pressed():
	OS.set_clipboard(text)
