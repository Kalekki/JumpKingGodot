extends Node

const levelWidth = 480
const levelHeight = 360
var currentLevel = 1
var levelNames = ["REDCROWN WOODS", #2
				"COLOSSAL DRAIN",	#6 
				"FALSE KINGS' KEEP",#11
				"BARGAINBURG",		#15
				"GREAT FRONTIER",	#20
				"WINDSWEPT BLUFF",	#26
				"STORMWALL PASS",	#27
				"CHAPEL PERILOUS",	#33
				"BLUE RUIN",		#37
				"THE TOWER"]		#40

func _ready():
	pass # Replace with function body.

func levelname(level):
	match(level):
		2:
			return levelNames[0]
		6:
			return levelNames[1]
		11:
			return levelNames[2]
		15:
			return levelNames[3]
		20:
			return levelNames[4]
		26:
			return levelNames[5]
		27:
			return levelNames[6]
		33:
			return levelNames[7]
		37:
			return levelNames[8]
		40:
			return levelNames[9]
		_:
			return ""
		
#func _process(delta):
#	pass
