extends ActionLeaf


func tick(actor:Node, blackboard:Blackboard)->int:
	if actor is Node2D and blackboard.has_value("target"):
		actor.look_at(blackboard.get_value("target").global_position)
		return SUCCESS
	return FAILURE
