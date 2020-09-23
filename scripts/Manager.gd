extends Node

signal score_chaged

var score = 0 setget set_score

func set_score(value):
	score = value
	emit_signal("score_chaged")
