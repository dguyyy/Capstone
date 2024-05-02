extends Node3D

const SPHERE = preload("res://sphere.tscn")
@export var number_of_spheres = 10

var time = 0

var supertime = 0

# Called when the node enters the scene tree for the first time.
func _ready():

	for sphere in number_of_spheres:
		var new_sphere = SPHERE.instantiate()
		add_child(new_sphere)
		
		var new_material = StandardMaterial3D.new()
		new_material.albedo_color = Color(randf(), randf(),randf())
		new_sphere.set_surface_override_material(0, new_material)
		
		
		
		new_sphere.position.x = randf_range(-5,5)
		new_sphere.position.y = randf_range(0,0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	supertime += 1
	
	
	if supertime <= 500:
		time += 1
	
	if time >= 5:
		
		var children = get_children()
		for child in children:
			child.queue_free()
			
		for sphere in number_of_spheres:
			
			var new_sphere = SPHERE.instantiate()
			add_child(new_sphere)
			
			var new_material = StandardMaterial3D.new()
			
			
			new_material.albedo_color = Color(randf(), randf(),randf(),0.5)
			
			#new_material.emission_enabled = true
			#new_material.emission_emission = Color(255, 255, 255)
			#new_material.emission_operator = BaseMaterial3D.EMISSION_OP_ADD
			
			new_sphere.set_surface_override_material(0, new_material)
			
			
			new_sphere.scale.x = 1.15
			new_sphere.scale.y = 1.7
			new_sphere.scale.z = 0.01
			new_sphere.position.x = randf_range(-0.575, -0.575)
			new_sphere.position.y = randf_range(0,0)
			
			
			
			
	if time >= 5:
		print("hi")
		time = 0

