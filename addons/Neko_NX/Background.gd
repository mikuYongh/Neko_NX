extends Control

class_name NekoBackground;
# Called when the node enters the scene tree for the first time.
func _ready():
	$BlurY/SubViewport/BlurX/SubViewport/background.stretch_mode=TextureRect.STRETCH_SCALE;
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	size=DisplayServer.window_get_size();
	$BlurY.size=DisplayServer.window_get_size();
	$BlurY/SubViewport/BlurX.size=DisplayServer.window_get_size();
	$BlurY/SubViewport/BlurX/SubViewport/background.size=DisplayServer.window_get_size();
	pass
func setBackground(img:ImageTexture):
	$BlurY/SubViewport/BlurX/SubViewport/background.texture=img;
	pass
