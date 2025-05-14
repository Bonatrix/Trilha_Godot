extends CharacterBody2D

@export var speed = 1.0

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D
func _physics_process(delta: float) -> void:
	var player_position = GameManager.player_position
	var diference =player_position - position
	var input_vector = diference.normalized()
		
	
		# Girar o sprite 	
	if input_vector.x > 0:
		sprite.flip_h = false
	elif input_vector.x < 0:		
		sprite.flip_h = true		
		
	#input vector
	#direção
	velocity = input_vector * speed * 100.0
	#velocity = alguma coisa
	
	move_and_slide()
