extends Node2D

"""
This could probably be better done with a single texture_rect, would help with applying the wind caused offset

"""

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
	for child in get_children():
		if child is Sprite:
			spritenodes.append(child)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	i = (i+1) % 4
	for spr in spritenodes:
		match(Type):
			"Light rain":
				spr.texture = lr_frames[i]
			"Light snow":
				spr.texture = ls_frames[i]
			"Rain":
				spr.texture = r_frames[i]
			"Snow":
				spr.texture = s_frames[i]
