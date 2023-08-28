extends ConditionLeaf

@export_enum("first", "second", "third") var target_priority := "first"


func tick(_actor:Node, blackboard:Blackboard)->int:
	if blackboard.has_value("target_" + target_priority):
		if is_instance_valid(blackboard.get_value("target_" + target_priority)):
			return SUCCESS
		blackboard.erase_value("target_" + target_priority)
	return FAILURE 
