extends TextureProgress

var begPos : Vector2
var endPos : Vector2
var posClicked : Vector2
var endInside : Vector2

func _ready():
	begPos = rect_position
	endPos = begPos + rect_size
	endInside = endPos - begPos
	
func ratioInBody():
	posClicked = get_local_mouse_position() - begPos
	var ration = posClicked.x / endInside.x
	if(ration > 1.0):
		ration = 1.0
	elif(ration < 0.0):
		ration = 0.0
	return ration
