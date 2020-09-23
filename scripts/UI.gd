extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready():
	update_score()
	Manager.connect("score_chaged", self, "on_score_chaged")

func on_score_chaged():
	update_score()

func update_score():
	$VBoxContainer/Score.text = str(Manager.score)
