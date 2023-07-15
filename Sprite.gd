extends Sprite

func _ready():
  Events.connect("size_changed", self, "changeSize")
  
func changeSize(val):
  scale = Vector2(val, val)
