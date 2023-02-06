extends Control

export (PackedScene) var next_scene: PackedScene
export (PackedScene) var settings_scene: PackedScene

onready var button_start = get_node("padding/menu/button_start")
onready var button_settings = get_node("padding/menu/button_settings")
onready var button_quit = get_node("padding/menu/button_quit")

func _ready() -> void:
	button_start.grab_focus()
	
	button_start.text = tr("button_start")
	button_settings.text = tr("button_settings")
	button_quit.text = tr("button_quit")


func _on_button_start_pressed() -> void:
	assert(next_scene.can_instance())
	get_tree().change_scene_to(next_scene)


func _on_button_settings_pressed() -> void:
	assert(settings_scene.can_instance())
	get_tree().change_scene_to(settings_scene)


func _on_button_quit_pressed() -> void:
	get_tree().quit()
