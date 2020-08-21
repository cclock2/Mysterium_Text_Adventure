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
