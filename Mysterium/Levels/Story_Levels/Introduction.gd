extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	AudioPlayers.music_node.play()
	GlobalVariables.current_stage = 0
	GlobalVariables._randomize_murder()
	$CanvasLayer2/Continue_Button.next_scene = GlobalVariables.suspects_path
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
