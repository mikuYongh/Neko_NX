@tool
extends EditorPlugin
var transparency = 0.65;#透明度
var ambiguity = 6;#模糊度
var brgn:NekoBackground;

var baseNode;
func _ready():
	_load();
func _load():
	var edit=get_editor_interface();
	baseNode=edit.get_base_control()
	brgn=preload("res://addons/Neko_NX/Background.tscn").instantiate();
	brgn.get_node("BlurY/SubViewport/BlurX/SubViewport/background").texture=preload("res://addons/Neko_NX/background.jpg")
	brgn.get_node("BlurY").material.set_shader_parameter("radius", ambiguity)
	brgn.get_node("BlurY/SubViewport/BlurX").material.set_shader_parameter("radius", ambiguity)
	baseNode.get_parent().add_child(brgn);
	baseNode.get_parent().move_child(brgn,0)
	
	baseNode.modulate=Color(1,1,1,transparency)
	pass
func _exit_tree():
	
	pass
func _enable_plugin():
	if !brgn:
		_load()
	
func _disable_plugin():
	if brgn&&baseNode:
		baseNode.modulate=Color(1,1,1,1)
		brgn.queue_free();
	pass
	
func _process(delta):
	
		
	pass
	
