extends Control

export (PackedScene) var next_scene: PackedScene
onready var animation = get_node("background/animation")

func _on_timer_timeout() -> void:
	animation.play("transition")
	yield(animation, "animation_finished")


func _on_background_animation_finished(anim_name: String) -> void:
	if anim_name == "transition":
		assert(next_scene.can_instance())
		get_tree().change_scene_to(next_scene)
