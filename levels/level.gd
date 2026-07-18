class_name Level
extends Node2D

## Must match levels.json
@export var level_name: String

@export var music: AudioStream
@export var music_random_start: bool = true


func _ready() -> void:
	if music:
		$"/root/AmbientMusicPlayer".change_track(music, music_random_start)
