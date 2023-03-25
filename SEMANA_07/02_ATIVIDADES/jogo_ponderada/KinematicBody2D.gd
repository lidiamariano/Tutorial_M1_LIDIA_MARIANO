extends KinematicBody2D


func _physics_process(delta):
	var mov = Vector2.ZERO
	mov.x = Input.get_action_strength("ui_right") -Input.get_action_strength("ui_left")
	move_and_slide(mov*700)
	
	mov.y = -Input.get_action_strength("ui_up") +Input.get_action_strength("ui_down")
	move_and_slide(mov*700)

	pass # Replace with function 

func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Node2Dtela6.tscn")
	pass # Replace with function body.
