extends ActionLeaf

@export_enum("first", "second", "third") var target_priority := "first"


func tick(actor:Node, blackboard:Blackboard)->int:
	if actor is Node2D and blackboard.has_value("target_" + target_priority):
		actor.look_at(blackboard.get_value("target_" + target_priority).global_position)
		return SUCCESS
	return FAILURE
