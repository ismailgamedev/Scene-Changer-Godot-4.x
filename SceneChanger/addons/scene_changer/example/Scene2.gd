extends Control

@onready var packed_scene = preload("res://addons/scene_changer/example/Scene1.tscn")

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		ChangeScene.load_scane_to_packed(packed_scene)
