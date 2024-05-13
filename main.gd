extends Node2D
var rng = RandomNumberGenerator.new()
const PIPE = preload("res://pipe.tscn")
var score =0
const  PIPE2 = preload("res://pipe2.tscn")
var pip  = PIPE
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	pass
func _process(delta):
	pass
@onready var timer = $Timer


func _on_timer_timeout():
	timer.wait_time *=0.998
	var b = pip.instantiate()
	b.position = Vector2(956,randi_range(220,400))
	add_child(b)


