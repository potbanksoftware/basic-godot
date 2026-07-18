extends LevelSelectSubmenuButton


func load_level(scene_path: String) -> void:
	LevelManager.load_level(scene_path)
