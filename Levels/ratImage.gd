extends TextureRect

# Called when the node enters the scene tree for the first time.
func _ready():
	var attacked = get_tree().get_root().find_node("AttackButton", true, false)
	attacked.connect("somedeath", self, "handleDeath")
	pass # Replace with function body.

func handleDeath():
	if GlobalVariables.enemy_hp < 1:
		print_debug("ENEMY DEATH")
		visible = false
	pass
