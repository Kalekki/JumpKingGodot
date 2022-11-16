extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if OS.get_name() == "Windows":
		get_tree().change_scene("res://Scenes/Title_scene.tscn")
	
	pass # Replace with function body.

func _input(event):
	if event:
		if event.is_pressed():
			get_tree().change_scene("res://Scenes/Title_scene.tscn")
	pass
