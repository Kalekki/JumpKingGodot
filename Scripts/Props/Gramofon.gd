extends AnimatedSprite


func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_VisibilityEnabler2D_screen_entered():
	$AudioStreamPlayer.playing = true



func _on_VisibilityEnabler2D_screen_exited():
	$AudioStreamPlayer.playing = false

