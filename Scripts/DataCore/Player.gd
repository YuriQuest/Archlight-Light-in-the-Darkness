extends entity

const tile_size = 16
var moving = false
var input_dir

func _physics_process(delta: float) -> void:
	input_dir = Vector2.ZERO
	if Input.is_action_just_pressed("ui_down"):
		input_dir = Vector2.DOWN
		move()
	if Input.is_action_just_pressed("ui_up"):
		input_dir = Vector2.UP
		move()
	if Input.is_action_just_pressed("ui_left"):
		input_dir = Vector2.LEFT
		move()
	if Input.is_action_just_pressed("ui_right"):
		input_dir = Vector2.RIGHT
		move()
func move():
	if input_dir:
		if moving == false:
			moving = true
			var tween := create_tween()
			tween.tween_property(self, "position", position + input_dir*tile_size, 0.35)
			tween.tween_callback(move_false)
func move_false():
	moving = false
