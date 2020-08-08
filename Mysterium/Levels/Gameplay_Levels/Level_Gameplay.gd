extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "tex#
export var remainingInvestigations = 2
export var success_path_index = 0
var numButtons = 6
var current_card

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	current_card = get_node("Card_" + str(GlobalVariables.murderer_card_indexes[GlobalVariables.current_stage]))
	_setButtons()
	_setText()
		
	#Investigation results should only be cleared at the beginning of the scne
	$CanvasLayer2/Investigation_Result_1.text = ""
	$CanvasLayer2/Investigation_Result_2.text = ""
	
func _getInvestigationText(index):
	return $Card_Type_Information.traits[index]

# Get The name of a Suspect/Room/Weapon
func _getCardName(index):
	var card = get_node("Card_" + str(index))
	return card.card_name

func _setText():
	pass
	$CanvasLayer2/Level_Text.text = "You have " + str(remainingInvestigations) + " remaining investigation"
	if remainingInvestigations != 1:
		$CanvasLayer2/Level_Text.text += "s"
	
func _setButtons():
	for n in range(numButtons):
		var button_node = get_node("CanvasLayer2/Investigate_Button_" + str(n))
		if (button_node != null):
			button_node.button_ID = n
			button_node._set_text_initial()
		else:
			print_debug("NumButtons > actual number of buttons: ")
			print_stack()

func _investigateTrait(index):
	pass
	var print_text = "You feel a slight tremor as the ghost responds to your " + $Card_Type_Information.traits[index] + " investigation: " + current_card.traitsArray[index]
	var final_investigate_text = ""
	if remainingInvestigations == 2:
		$CanvasLayer2/Investigation_Result_1.text = print_text
	else: 
		$CanvasLayer2/Investigation_Result_2.text = print_text
		final_investigate_text += ". Please guess a " + $Card_Type_Information.card_type
		for n in range(numButtons):
			var button_node = get_node("CanvasLayer2/Investigate_Button_" + str(n))
			if (button_node != null):
				button_node.final_guess_mode = true;
				button_node._set_enabled()
				button_node._set_text_final_guess()
			else:
				print_debug("Tried to enable more buttons than numButtons")
				print_stack()
	remainingInvestigations = remainingInvestigations-1
	_setText()
	$CanvasLayer2/Level_Text.text += final_investigate_text
	

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	4pas
