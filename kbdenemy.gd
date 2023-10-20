extends RigidBody2D

var speed = 100
var direction = -1

func _ready():
	$Timer.start()
	update_animation()

func _physics_process(delta):
	self.linear_velocity.x = speed * direction
	
func _on_timer_timeout():
	direction *= -1
	
func _on_body_entered(body):
	if body.name == "Keyboard_player":
		OS.alert("You Died")
		body.queue_free()
		get_tree().reload_current_scene()
		
@onready var anim = $AnimatedSprite2D
func update_animation():
	anim.play("default")
