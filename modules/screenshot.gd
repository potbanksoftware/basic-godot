class_name Screenshot
extends Node


func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("screenshot"):
		take_screenshot()


func take_screenshot() -> void:
	var img: Image = get_viewport().get_texture().get_image()
	DirAccess.open("user://").make_dir("screenshots")
	img.save_png("user://screenshots/%s.png" % [Time.get_datetime_string_from_system()])
