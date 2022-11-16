extends Sprite

var transitionSpeed := 0.1
var currentAlpha = 1
var targetAlpha = 1

func _ready():
	pass # Replace with function body.

func _process(delta):
	currentAlpha = lerp(currentAlpha,targetAlpha,transitionSpeed)
	modulate = Color(1,1,1,currentAlpha)

func _on_Area2D_body_entered(body):
	if body.get_name() == "King":
		targetAlpha = 0


func _on_Area2D_body_exited(body):
	if body.get_name() == "King":
		targetAlpha = 1
