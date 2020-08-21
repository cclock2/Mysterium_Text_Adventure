extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var murderer_card_indexes = [4,2,0]
var current_stage = 0
var rng = RandomNumberGenerator.new()

var music_node = AudioStreamPlayer.new()
var chime_node = AudioStreamPlayer.new()
var thunder_node = AudioStreamPlayer.new()

#node paths
var level_gameplay_path = "/root/Level_Gameplay"

#scene path
var suspects_path = 	"res://Levels/Gameplay_Levels/Suspects.tscn"
var rooms_path = 		"res://Levels/Gameplay_Levels/Rooms.tscn"
var weapons_path = 		"res://Levels/Gameplay_Levels/Weapons.tscn"

var introduction_path = "res://Levels/Story_Levels/Introduction.tscn"
var game_over_path = 	"res://Levels/Story_Levels/Game_Over.tscn"

var success_path_array = ["res://Levels/Story_Levels/Correct_Suspect.tscn","res://Levels/Story_Levels/Correct_Room.tscn","res://Levels/Story_Levels/Finale.tscn"]
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

func _randomize_murder():
	rng.randomize()
	for i in range(3):
		murderer_card_indexes[i] = rng.randi_range(0,5)
