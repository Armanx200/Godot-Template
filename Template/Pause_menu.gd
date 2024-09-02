extends ColorRect

@onready var animator: AnimationPlayer = $AnimationPlayer

func _on_resume_pressed():
	unpause()
	
func _on_quit_pressed():
	get_tree().change_scene_to_file("res://main_menu.tscn")
	
func unpause():
	animator.play("Unpause")
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
func pause():
	animator.play("Pause")
	get_tree().paused = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

	
	
