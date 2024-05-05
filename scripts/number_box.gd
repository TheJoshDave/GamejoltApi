extends SpinBox
onready var controller: Node = get_node("../../../buttons")

func _ready():
	controller.set(name, value)

func _on_SpinBox_value_changed(value):
	gamejolt.input = value
	controller.set(name, value)
