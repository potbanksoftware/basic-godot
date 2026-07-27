extends MainMenu


func _ready() -> void:
	get_parent().set_process(false)

	super()
	var pause_menu: PauseMenu = get_node_or_null("../../PauseCanvas/PauseMenu")
	if pause_menu:
		pause_menu.suppress_menu = true


func disable_menu() -> void:
	await super()


func _on_start_button_pressed() -> void:
	LevelManager.load_level("res://levels/01-demo.tscn")
	disable_menu()
