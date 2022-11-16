extends Camera2D

"""
TODO
	FIX levelX going over 1
	LEVELLABEL FADE IN/OUT
"""

onready var target
var levelHeight = 360
var levelWidth = 480
var currentLevelY = 1.0
var currentLevelX = 1
var goalY = -15367
var percentageToEnd = 0
var _previouslvl = 0
#var _previousName = "Camp"
var currentName = ""


func _ready():
	target = get_node("../King")
	$LevelLabel.text = currentName

func _process(delta):
	var target_y = int(abs(target.position.y - levelHeight))-16# feet pos
	var target_x = int(target.position.x - levelWidth) 
	currentLevelY = int(target_y / levelHeight) + 1
	currentLevelX = int(target_x / levelWidth) + 1
	
	if _previouslvl != currentLevelY:
		#LEVEL CHANGED
		#print(WindManager.currentVelocity)
		Globals.currentLevel = currentLevelY
		currentName =  Globals.levelname(currentLevelY)
		$LevelLabel.text = str(currentName)
		
	
	percentageToEnd = abs(((target.position.y-16)-levelHeight)/goalY)*100
	$PercentageLabel.text = str(percentageToEnd).pad_decimals(2) + "%"
	
	#SNAP CAMERA POSITION TO LEVEL
	self.position.y = levelHeight/2+(((currentLevelY * levelHeight)-levelHeight)*-1)
	self.position.x = levelWidth/2+(((currentLevelX*levelWidth)-levelWidth))

	_previouslvl = currentLevelY


