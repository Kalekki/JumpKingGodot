extends AnimatedSprite
"""
TODO
	Change animation based on surface
	
"""
func _ready():
	pass # Replace with function body.

func kill_Self():
	queue_free()



func _on_JumpParticle_animation_finished():
	kill_Self()
	pass # Replace with function body.
