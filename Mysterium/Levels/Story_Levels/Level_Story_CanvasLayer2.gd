extends CanvasLayer

onready var stringPrinted = $Level_Text.text

func _ready():
	if (GlobalVariables.typewriter_text_mode):
		$Level_Text.text = ""
		_dialogue( stringPrinted )

func _dialogue( string ):
	for letter in string:
		$Timer.start()
		$Level_Text.add_text( letter )
		yield($Timer, "timeout")


func _on_Speedup_Text_Button_pressed():
	$Timer.wait_time = .001
	$Speedup_Text_Button.hide()
	print_debug("Button_Pressed")
	pass # Replace with function body.
