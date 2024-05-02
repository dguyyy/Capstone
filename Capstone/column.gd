extends Label3D

var supertime = 0
var time = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
	
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://Scene 3.tscn")
	
	time += 1
	supertime += 1
	
	if supertime <= 500:
		if time >= 5:
			var letters = ["1", "2", "3", "4"];
			
			letters.pick_random()
			
			var page = ""
			
			
			for x in 1:
				page += letters.pick_random()
				
			
			set_text(page)
			
		if time >= 5:
			time = 0
