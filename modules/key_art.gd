class_name KeyArt
extends Screenshot


func take_screenshot() -> void:
	var img: Image = get_viewport().get_texture().get_image()
	img.save_png("key-art/%sx%s.png" % [get_window().size.x, get_window().size.y])
