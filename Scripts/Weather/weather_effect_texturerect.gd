#tool
extends Node2D


var i = 0
var lr0 = preload("res://Sprites/Levels/Weather/light_rain0.png")
var lr1 = preload("res://Sprites/Levels/Weather/light_rain1.png")
var lr2 = preload("res://Sprites/Levels/Weather/light_rain2.png")
var lr3 = preload("res://Sprites/Levels/Weather/light_rain3.png")
var ls0 = preload("res://Sprites/Levels/Weather/light_snow0.png")
var ls1 = preload("res://Sprites/Levels/Weather/light_snow1.png")
var ls2 = preload("res://Sprites/Levels/Weather/light_snow2.png")
var ls3 = preload("res://Sprites/Levels/Weather/light_snow3.png")
var r0 = preload("res://Sprites/Levels/Weather/rain0.png")
var r1 = preload("res://Sprites/Levels/Weather/rain1.png")
var r2 = preload("res://Sprites/Levels/Weather/rain2.png")
var r3 = preload("res://Sprites/Levels/Weather/rain3.png")
var s0 = preload("res://Sprites/Levels/Weather/snow0.png")
var s1 = preload("res://Sprites/Levels/Weather/snow1.png")
var s2 = preload("res://Sprites/Levels/Weather/snow2.png")
var s3 = preload("res://Sprites/Levels/Weather/snow3.png")
export(Texture) var mask

export(String, "Light rain","Light snow","Rain","Snow") var Type
var lr_frames = [lr0,lr1,lr2,lr3]
var ls_frames = [ls0,ls1,ls2,ls3]
var r_frames = [r0,r1,r2,r3]
var s_frames = [s0,s1,s2,s3]
var currentFrame = 0
var spritenodes = []


# Called when the node enters the scene tree for the first time.
func _ready():
	$Light2D.texture = mask
		
	pass # Replace with function body.


func _process(delta):

	if (Globals.currentLevel > 25) and (Globals.currentLevel < 33):
		$TextureRect.rect_size.x = 720
		$TextureRect.rect_position.x += WindManager.currentVelocity * 3
		$TextureRect.rect_position.x  = fmod($TextureRect.rect_position.x-120,120)

	else:
		$TextureRect.rect_size.x = Globals.levelWidth
		$TextureRect.rect_position.x = 0


func _on_Timer_timeout():
	i = (i+1) % 4
	match(Type):
		"Light rain":
			$TextureRect.texture = lr_frames[i]
		"Light snow":
			$TextureRect.texture = ls_frames[i]
		"Rain":
			$TextureRect.texture = r_frames[i]
		"Snow":
			$TextureRect.texture = s_frames[i]
