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






