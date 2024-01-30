extends CharacterBody2D

var speed = 500
var ball: CharacterBody2D

func _ready():
	ball = get_parent().get_node("Ball")
	
func _physics_process(delta):
	velocity = Vector2(0, get_opponent_direction())
	move_and_collide(velocity * speed * delta)
	
	
func get_opponent_direction():
	if abs(ball.position.y - position.y) > 24:
		if ball.position.y > position.y: 
			return 1
		else: 
			return -1
	else: 
		return 0
