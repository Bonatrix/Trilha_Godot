extends Node

@export var speed = 1

var enemy: Enemy
var sprite: AnimatedSprite2D


func _read():
	enemy = get_parent()
	sprite = enemy.get_node("AnimatedSprite2D")
	enemy.health
	pass
	
	
	
func _physics_process(delta: float) -> void:
	var player_position = GameManager.player_position
	var diference =  player_position - enemy.position
	var input_vector = diference.normalized()
		
	
	#input vector
	#direção
	enemy.velocity = input_vector * speed * 100.0

	enemy.move_and_slide()
	
			 #Girar o sprite 	
	if input_vector.x > 0:
		sprite.flip_h = false
	elif input_vector.x < 0:		
		sprite.flip_h = true		
		
