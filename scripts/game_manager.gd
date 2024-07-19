extends Node

@onready var score_label = $"../Player/Camera2D/ScoreLabel"

var score = 0

func _init():
	Engine.max_fps = 240

func add_point():
	score += 1
	score_label.text = "Score: " + str(score) + " FPS: " + str(Engine.get_frames_per_second())
	
	
	
	
