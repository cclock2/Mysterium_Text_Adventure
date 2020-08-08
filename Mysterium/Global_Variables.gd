extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var murderer_card_indexes = [4,2,0]
var current_stage = 0


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
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
