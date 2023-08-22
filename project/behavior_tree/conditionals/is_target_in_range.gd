extends ConditionLeaf


func tick(actor:Node, blackboard:Blackboard)->int:
	if blackboard.has_value("target"):
		if (blackboard.get_value("target").global_position - actor.global_position).length() < actor.weapon_range:
			return SUCCESS
	return FAILURE
