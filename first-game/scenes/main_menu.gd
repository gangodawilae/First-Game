extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void: # Replace with function body.
	visible = false


func _on_restart_button_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()
	
func toggle_menu():
	#Show/hide menu
	visible = !visible
	#Pause/unpause game
	get_tree().paused = visible
	
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("menu"):
		toggle_menu()
	


func _on_exit_button_pressed() -> void:
	get_tree().quit()
