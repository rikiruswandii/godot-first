extends Node2D  # Tetap menggunakan Node2D

@export var speed = 100
var screen_size

func _ready() -> void:
	screen_size = get_viewport_rect().size

func _physics_process(delta: float) -> void:
	var velocity = Vector2.ZERO
	
	# Mengatur arah gerakan
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
		$SamuraiBody/Samurai.flip_h = false
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
		$SamuraiBody/Samurai.flip_h = true
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1

	# Pergerakan dan Animasi pada CharacterBody2D
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$SamuraiBody.velocity = velocity  # Mengatur velocity untuk CharacterBody2D
		$SamuraiBody.move_and_slide()     # Panggil move_and_slide dari CharacterBody2D
		if velocity.y != 0:
			$SamuraiBody/Samurai.play("walk")
		else:
			$SamuraiBody/Samurai.play("run")
	else:
		$SamuraiBody/Samurai.play("idle")

	# Animasi serangan
	if Input.is_action_just_pressed("left_click"):
		$SamuraiBody/Samurai.play("attack_1")
	elif Input.is_action_just_pressed("right_click"):
		$SamuraiBody/Samurai.play("attack_2")
	elif Input.is_action_just_pressed("ui_select"):
		$SamuraiBody/Samurai.play("jump")
