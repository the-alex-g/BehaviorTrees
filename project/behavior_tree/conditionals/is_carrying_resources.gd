extends ConditionLeaf


func tick(_actor:Node, blackboard:Blackboard)->int:
	if blackboard.has_value("resources"):
		return SUCCESS
	return FAILURE
