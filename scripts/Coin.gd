extends Area2D

func _ready():
	connect("body_entered", self, "on_body_entered")
	$AudioStreamPlayer.connect("finished", self, "on_finished")


func on_body_entered(body: Node):
	Manager.score += 1
	hide()
	$CollisionShape2D.disabled = true
	$AudioStreamPlayer.play()

func on_finished():
	queue_free()
