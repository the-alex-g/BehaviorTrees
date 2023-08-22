extends ConditionLeaf


func tick(_actor:Node, blackboard:Blackboard)->int:
	if blackboard.has_value("target"):
		if is_instance_valid(blackboard.get_value("target")):
			return SUCCESS
	return FAILURE 
