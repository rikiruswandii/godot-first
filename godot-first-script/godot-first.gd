extends Node2D

@export var speed = 400
var screen_size

func _ready() -> void:
	screen_size = get_viewport_rect().size
	
func _process(delta: float) -> void:

	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
		$Samurai.flip_h = false
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
		$Samurai.flip_h = true
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		position += velocity * delta
		position = position.clamp(Vector2.ZERO, screen_size)
		if velocity.y != 0:
			$Samurai.play("walk")
		else:
			$Samurai.play("run")
	else:
		$Samurai.play("idle")

	# Animasi serangan
	if Input.is_action_just_pressed("left_click"):
		$Samurai.play("attack_1")
	elif Input.is_action_just_pressed("right_click"):
		$Samurai.play("attack_2")
