extends KinematicBody2D

var linear_vel = Vector2()

var SPEED = 400

func _physics_process(delta):
	var target_vel = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	).normalized()
	
	linear_vel = lerp(linear_vel, target_vel * SPEED, 0.5)
	
	linear_vel = move_and_slide(linear_vel)	
