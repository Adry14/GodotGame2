# coin.gd
extends Area2D

# Ya no necesitamos la señal local "signal coinCollected"

func _on_body_entered(_body: Node2D) -> void:
	# Verificamos si el cuerpo que entró es el jugador (opcional pero recomendado)
	if _body.is_in_group("player"):
		# Emitimos la señal desde nuestro script global Autoload
		GlobalSignals.emit_signal("coin_collected")
		# La moneda se destruye a sí misma
		queue_free()
