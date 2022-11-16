extends Sprite

export var direction := 1 # -1 <-  -> 1
export var speed := 32 # pixels per second
var sprite_width = texture.get_width()# 

# Called when the node enters the scene tree for the first time.
func _ready():
	sprite_width = texture.get_width()
	pass # Replace with function body.

func _process(delta):
	position.x += direction*speed*delta
	if position.x > Globals.levelWidth:
		position.x = -sprite_width
	elif position.x < -sprite_width:
		position.x = Globals.levelWidth
