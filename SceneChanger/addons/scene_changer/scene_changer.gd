@tool
extends EditorPlugin


func _enter_tree() -> void:
	add_autoload_singleton("ChangeScene","res://addons/scene_changer/ChangeScene.tscn")



func _exit_tree() -> void:
	remove_autoload_singleton("ChangeScene")
