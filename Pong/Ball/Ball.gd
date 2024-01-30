extends CharacterBody2D

var speed = 600

func _ready():	
	velocity.x = [-1, 1][randi() % 2]
	velocity.y = [-0.8, 0.8][randi() % 2]
	

func _physics_process(delta):
	var collision = move_and_collide(velocity * speed * delta)
	
	if collision:
		velocity = velocity.bounce(collision.get_normal())
