extends Control


func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		ChangeScene.load_scane_to_file("res://addons/scene_changer/example/Scene2.tscn")
