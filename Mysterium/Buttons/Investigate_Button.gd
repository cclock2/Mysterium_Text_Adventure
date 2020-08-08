extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var button_ID = 0
var final_guess_mode = false
var success_path = ""
var gameplay_node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	gameplay_node = get_node(GlobalVariables.level_gameplay_path)
	success_path = GlobalVariables.success_path_array[gameplay_node.success_path_index]
	
	

#Button Text during Investigation phase
func _set_text_initial():
	text = gameplay_node._getInvestigationText(button_ID)

#Button Text during Final Guess phase
func _set_text_final_guess():
	text = gameplay_node._getCardName(button_ID)

#Make button unclickable
func _set_disabled():
  disabled = true
  modulate = Color(0.5,0.5,0.5,1)

#Make button clickable
func _set_enabled():
	disabled = false
	modulate = Color(1,1,1,1)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	#_set_disabled()
	if (!final_guess_mode):
		_set_disabled()
		gameplay_node._investigateTrait(button_ID)
	elif (button_ID == GlobalVariables.murderer_card_indexes[GlobalVariables.current_stage]):
		#Move To Next Scene
		var err = get_tree().change_scene(success_path)
		if (err == OK):
			print_debug("Correct!")
		else:
			print_debug("Correct Scene failed to load")
	else:
		#Move To Game Over 
		var err = get_tree().change_scene(GlobalVariables.game_over_path)
		if (err == OK):
			print_debug("Game Over")
		else:
			print_debug("Game_Over Scene failed to load")
