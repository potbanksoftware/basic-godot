extends Level


func _ready() -> void:
	$"/root/AmbientMusicPlayer".change_track(music, music_random_start)
