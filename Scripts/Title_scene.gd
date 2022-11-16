extends Node2D

var playSound := preload("res://Audio/gui_sfx/menu_confirm.wav")


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("Logo rise")
	pass # Replace with function body.

func _input(event):
	if event:
		if event.is_action_pressed("jump"):
			$Label/Timer.wait_time = $Label/Timer.wait_time/8
			$sfxplayer.stream = playSound
			$sfxplayer.play()
			$musicplayer.stop()
			yield($sfxplayer,"finished")
			
			get_tree().change_scene("res://Scenes/Testlevel.tscn")
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	$Label.visible = !$Label.visible
	pass # Replace with function body.
