extends Node
var STRENGTH = 0.1
var SPEED = 0.4812489
var currentVelocity = 0.0
onready var start_time = OS.get_ticks_msec()
var currLevel


func _ready():

	currLevel = Globals.currentLevel
	pass # Replace with function body.



func _process(delta):
	if (Globals.currentLevel > 25) and (Globals.currentLevel < 33):
		currentVelocity = getCurrentVelocity()
	else:
		currentVelocity = 0.0;

func getCurrentVelocity():
	var current_time = (OS.get_ticks_msec() - start_time)/1000.0
	var timeSpan = float(current_time) * SPEED
	var num1:float = sin(timeSpan)
	var num2:float = cos(timeSpan)
	if num2 <= 0.0:
		num2 = (num1*2.0)-1.0
	else:
		num2 = (num1*2.0)+1.0
		
	if num2 < -1.0:
		num2 = -1.0
	if num2 > 1.0:
		num2 = 1.0
	return num2
