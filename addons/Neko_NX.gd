@tool
extends EditorPlugin

func _enter_tree():
	var edit=get_editor_interface();
	var node=edit.get_base_control()
	#print(node.get_children())
	
	var brgn:NekoBackground=preload("res://addons/Neko_NX/Background.tscn").instantiate();
	brgn.get_node("BlurY/SubViewport/BlurX/SubViewport/background").texture=preload("res://addons/Neko_NX/background.jpg")
	node.get_parent().add_child(brgn);
	node.get_parent().move_child(brgn,0)
	
	node.modulate=Color(1,1,1,0.65)
	
	# Initialization of the plugin goes here.
	pass


func _exit_tree():
	# Clean-up of the plugin goes here.
	pass

func _process(delta):
	
		
	pass
	
