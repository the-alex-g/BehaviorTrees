extends ActionLeaf


func tick(actor:Node, blackboard:Blackboard)->int:
	var target : Node = blackboard.get_value("target")
	if target.has_method("hit"):
		target.hit(actor.damage)
		return SUCCESS
	return FAILURE
