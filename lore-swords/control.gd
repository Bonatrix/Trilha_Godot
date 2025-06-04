extends Control
@onready var contador_carne: Label = $MarginContainer/carne/contador_carne as Label
@onready var contador_VIDAS: Label = $MarginContainer/vida/contador_VIDAS as Label
@onready var contador_time: Label = $MarginContainer/tempo/contador_time as Label
 

func _ready() -> void:
	pass 
	
	
func _process(delta: float) -> void:
	contador_carne.text = str(Global.carne)
	
