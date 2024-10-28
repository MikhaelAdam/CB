extends CharacterBody2D

<<<<<<< HEAD
var speed = 400  
=======
var speed = 400  # speed in pixels/sec
>>>>>>> a31af97884830770857c6a251d6a659863900c2c

func _physics_process(delta):
	var direction = Input.get_vector("left", "right", "up", "down").normalized()
	velocity = direction * speed

	move_and_slide()
