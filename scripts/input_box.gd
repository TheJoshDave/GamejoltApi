extends LineEdit
onready var controller: Node = get_node("../../../buttons")

func _ready():
	controller.set(name, text)

func _on_input_box_text_changed(new_text):
	gamejolt.input = new_text
	controller.set(name, text)
