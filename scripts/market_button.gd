extends Button


func _on_pressed():
	pass # Replace with function body.
	var milkLoaded = get_node("../../Milk")
	if milkLoaded.get_texture() == null:
		print_debug("Theres No Milk!")
	else:
		print_debug("Milk Loaded!")
		get_tree().change_scene_to_file("res://scenes/market.tscn")