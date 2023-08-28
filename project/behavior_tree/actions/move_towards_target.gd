extends ActionLeaf

@export_enum("first", "second", "third") var target_priority := "first"


func tick(actor:Node, blackboard:Blackboard)->int:
	if actor is CharacterBody2D and blackboard.has_value("target_" + target_priority):
		actor.move_and_collide(Vector2.RIGHT.rotated(actor.rotation) * actor.speed / 60)
		return SUCCESS
	return FAILURE
