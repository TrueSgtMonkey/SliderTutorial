extends Control

var mouseInSlider := false
var textSlide : TextureProgress

func _ready():
	textSlide = $HBoxContainer/TextureProgress
	
func _input(event):
	if(mouseInSlider && Input.is_mouse_button_pressed(BUTTON_LEFT)):
		setValue()

func setValue():
	var value = textSlide.ratioInBody() * textSlide.max_value
	textSlide.value = value
	Events.emit_signal("size_changed", value)
	$HBoxContainer/MarginContainer/Label.text = "Size: " + str(textSlide.value)

func _on_TextureProgress_mouse_entered():
	mouseInSlider = true

func _on_TextureProgress_mouse_exited():
	mouseInSlider = false
