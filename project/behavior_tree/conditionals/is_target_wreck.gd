extends ConditionLeaf

@export_enum("first", "second", "third") var target_priority := "first"


func tick(_actor:Node, blackboard:Blackboard)->int:
	if blackboard.get_value("target_" + target_priority) is Wreck:
		return SUCCESS
	return FAILURE
