extends CSGBox3D

var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
	material.albedo_color = Color(randf(), randf(),randf())



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	scale.y += 2
	
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://Scene 2.tscn")
	
	
	if Input.is_action_just_pressed("reset"):
		get_tree().reload_current_scene()






