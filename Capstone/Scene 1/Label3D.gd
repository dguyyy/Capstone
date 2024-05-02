extends Label3D

var supertime = 0
var time = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
	
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	
	time += 1
	supertime += 1
	
	if supertime <= 500:
		if time >= 5:
			var letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", ".", "," , "!", "?"];
			
			letters.pick_random()
			
			var page = ""
			
			var numof = randf_range(4, 10)
			
			for x in numof:
				page += letters.pick_random()
				
			
			set_text(page)
			
		if time >= 5:
			time = 0
