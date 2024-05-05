extends OptionButton
export var make_items: Array = ["item1", "item2", "item3"]
onready var controller: Node = get_node("../../../buttons")

func _ready():
	for i in range (0, make_items.size()):
		add_item(make_items[i])
	select(0)
	controller.set(name, get_item_text(0))

func _on_OptionButton_item_selected(id):
	gamejolt.input = get_item_text(id)
	controller.set(name, get_item_text(id))
