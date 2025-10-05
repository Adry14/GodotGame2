extends CharacterBody2D
signal player_died

@export var speed = 10.0
@export var jump_power = 10.0
@export var death_y_position: float = 650.0

var speed_mult = 30.0
var jump_mult = -30


#const SPEED = 300.0
#const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_power * jump_mult

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("izquierda", "derecha")
	if direction:
		velocity.x = direction * speed * speed_mult
	else:
		velocity.x = move_toward(velocity.x, 0, speed * speed_mult)
		
	if global_position.y > death_y_position:
		die() # Llama a la función de muerte
		
	move_and_slide()
	
func die():

	print("El jugador ha muerto.")
	
	player_died.emit() # Avisa al resto del juego
	
	set_physics_process(false) # Detiene el movimiento y la gravedad para el jugador
	
	# ... (lógica para la animación y sonido de muerte) ...
