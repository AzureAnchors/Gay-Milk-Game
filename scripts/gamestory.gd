extends Node

func _on_pressed():
    print_debug("Pressed!")
    get_tree().change_scene_to_file("res://scenes/farming.tscn")