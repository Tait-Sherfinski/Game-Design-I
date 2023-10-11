extends RigidBody2D

var speed = 100
var direction = -1

func _ready():
	$Timer.start()

func _physics_process(delta):
	self.linear_velocity.x = speed * direction
	
func _on_timer_timeout():
	direction *= -1
	
func _on_body_entered(body):
	if body.name == "Keyboard_player":
		body.queue_free()
		OS.alert("You Died!")
