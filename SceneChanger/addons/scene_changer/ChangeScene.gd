extends CanvasLayer


func _ready() -> void:
	$AnimationPlayer.play("fade")
	
func load_scane_to_file(path : String) -> void:
	if $AnimationPlayer.is_playing() == false:
		$AnimationPlayer.play_backwards("fade")
		await $AnimationPlayer.animation_finished
		get_tree().change_scene_to_file(path)
		$AnimationPlayer.play("fade")
	
func load_scane_to_packed(packed_scene : PackedScene) -> void:
	if $AnimationPlayer.is_playing() == false:
		$AnimationPlayer.play_backwards("fade")
		await $AnimationPlayer.animation_finished
		get_tree().change_scene_to_packed(packed_scene)
		$AnimationPlayer.play("fade")
	
