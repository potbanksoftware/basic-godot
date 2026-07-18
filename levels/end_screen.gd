extends Level


func _ready() -> void:
	$PauseCanvas/PauseMenu.suppress_menu = true


func _on_main_menu_button_pressed() -> void:
	LevelManager.load_level("res://levels/main_menu.tscn")
