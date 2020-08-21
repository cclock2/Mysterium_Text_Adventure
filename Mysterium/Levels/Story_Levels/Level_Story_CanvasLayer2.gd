extends CanvasLayer

onready var stringPrinted = $Level_Text.text
onready var text_speedup = false

func _ready():
	if (GlobalVariables.typewriter_text_mode):
		$Level_Text.text = ""
		_dialogue( stringPrinted )

func _dialogue( string ):
	for letter in string:
		$Timer.start()
		yield($Timer, "timeout")
		$Level_Text.add_text( letter )
		#yield($Timer, "timeout")

#On_Speedup_Text_Button_Pressed() interrupts _dialogue and completes the text
func _on_Speedup_Text_Button_pressed():
	if text_speedup:
		$Timer.wait_time = 1000000
		
		#Add in a buffer to let the last character be typed
		var delayTimer = Timer.new()
		delayTimer.set_wait_time(.1)
		delayTimer.set_one_shot(true)
		self.add_child(delayTimer)
		delayTimer.start()
		yield(delayTimer, "timeout")
		
		$Speedup_Text_Button.hide()
		$Level_Text.text = stringPrinted
	else :
		text_speedup = true
		$Timer.wait_time = .001
	print_debug("Button_Pressed")
	pass # Replace with function body.
