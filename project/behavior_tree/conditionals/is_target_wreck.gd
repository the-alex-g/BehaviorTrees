extends ConditionLeaf


func tick(_actor:Node, blackboard:Blackboard)->int:
	if blackboard.get_value("target") is Wreck:
		return SUCCESS
	return FAILURE
