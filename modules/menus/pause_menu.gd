extends PauseMenu


func _on_main_menu_button_pressed() -> void:
	await disable_menu()
	LevelManager.load_level(main_menu_scene)
