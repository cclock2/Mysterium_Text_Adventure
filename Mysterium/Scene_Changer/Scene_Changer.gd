extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func transition_scene(next_scene):
	get_tree().paused = true;
	#yield(get_tree().create_timer(delay), "timeout")
	$AnimationPlayer.play("fade")
	yield($AnimationPlayer, "animation_finished")
	var err = get_tree().change_scene(next_scene)
	if err != OK:
		print_debug("Could not load scene")
	$AnimationPlayer.play_backwards("fade")
	yield($AnimationPlayer, "animation_finished")
	get_tree().paused = false;


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
