extends ActionLeaf

@export_enum("first", "second", "third") var target_priority := "first"


func tick(actor:Node, blackboard:Blackboard)->int:
	var target : Node = blackboard.get_value("target_" + target_priority)
	if target.has_method("hit"):
		target.hit(actor.damage)
		return SUCCESS
	return FAILURE
