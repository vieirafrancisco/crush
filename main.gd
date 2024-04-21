extends Node

var screen_size
var block = preload("res://block.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport().get_visible_rect().size
	for i in range(15):
		for j in range(20):
			var block_instance = block.instantiate()
			block_instance.position = Vector2(i * 32  + 16, -j * 32 + 16)
			add_child(block_instance)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
