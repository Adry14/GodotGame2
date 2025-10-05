# UI.gd
extends CanvasLayer

var coins = 0

func _ready():
	# Conexión de la señal (esto ya estaba correcto)
	GlobalSignals.connect("coin_collected", Callable(self, "handleCoinCollected"))
	
	# Actualizamos el texto inicial usando str()
	$CoinsCollectedText.text = str(coins)
	
func handleCoinCollected():
	coins += 1
	# Actualizamos el texto al recolectar usando str()
	$CoinsCollectedText.text = str(coins)
