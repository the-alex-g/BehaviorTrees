extends ConditionLeaf

@export_enum("first", "second", "third") var target_priority := "first"


func tick(actor:Node, blackboard:Blackboard)->int:
	if blackboard.has_value("target_" + target_priority):
		if (blackboard.get_value("target_" + target_priority).global_position - actor.global_position).length() < actor.weapon_range:
			return SUCCESS
	return FAILURE
