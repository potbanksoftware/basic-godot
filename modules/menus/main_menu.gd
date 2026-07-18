extends MainMenu


func _ready() -> void:
	get_parent().set_process(false)

	super()
	$"../../PauseCanvas/PauseMenu".suppress_menu = true


func disable_menu() -> void:
	await super()


func _on_start_button_pressed() -> void:
	LevelManager.load_level("res://levels/01-demo.tscn")
	disable_menu()
