extends Area2D

@onready var erase_timer = $EraseTimer
@onready var game_manager = %GameManager
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var collision_shape_2d = $CollisionShape2D
@onready var pickup_sound = $PickupSound

func _on_body_entered(body:Node2D):
	animated_sprite_2d.set_deferred("visible", false)
	collision_shape_2d.set_deferred("disabled", true)
	pickup_sound.set_deferred("playing", true)
	game_manager.add_point()
	erase_timer.start()


func _on_erase_timer_timeout():
	queue_free()
