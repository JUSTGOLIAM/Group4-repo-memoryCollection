extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# 当玩家进入碰撞区域时触发



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "player":
		$DialogueBox.show()
 
