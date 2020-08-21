extends Node

var music_node = AudioStreamPlayer.new()
var chime_node = AudioStreamPlayer.new()
var thunder_node = AudioStreamPlayer.new()

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	music_node.pause_mode = Node.PAUSE_MODE_PROCESS
	chime_node.pause_mode = Node.PAUSE_MODE_PROCESS
	thunder_node.pause_mode = Node.PAUSE_MODE_PROCESS
	var stream = load("res://Assets/Music/The_Count's_Manor.ogg")
	music_node.set_stream(stream)
	stream = load("res://Assets/Sound_Effects/Chime.wav")
	chime_node.set_stream(stream)
	stream = load("res://Assets/Sound_Effects/Thunder.wav")
	thunder_node.set_stream(stream)
	get_tree().get_root().call_deferred("add_child",music_node)
	get_tree().get_root().call_deferred("add_child",chime_node)
	get_tree().get_root().call_deferred("add_child",thunder_node)
	music_node.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
