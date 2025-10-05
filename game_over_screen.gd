extends Control

# Esta función se conectará a la señal del botón.
func _on_volver_al_menu_button_pressed():
	# Cambia a la escena del menú principal.
	# ¡Asegúrate de que el nombre del archivo de tu menú principal es correcto!
	get_tree().change_scene_to_file("res://menu.tscn")


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://menu.tscn")
	pass # Replace with function body.
