extends Node


func load_level(scene_path: String) -> Node2D:
	ResourceLoader.load_threaded_request(scene_path)

	var current_level := get_current_level()
	if current_level != null:
		current_level.queue_free()
		await current_level.tree_exited

	print("Load Level ", scene_path)
	var scene: Node2D = ResourceLoader.load_threaded_get(scene_path).instantiate()
	scene.name = "Level"

	$"/root".add_child(scene)

	return scene


func get_current_level() -> Node2D:
	return get_node_or_null("/root/Level")
