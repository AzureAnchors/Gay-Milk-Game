extends Button

@export var buttonNode: Button
func _on_pressed():
    print (get_tree().get_node_count())
    print (get_node("../../../Wife/MarketButton"))
    get_node("../../../Wife/MarketButton").set_visible(true)
    find_parent("Intro1").set_visible(false)
    