extends ActionLeaf


func tick(_actor:Node, blackboard:Blackboard)->int:
	var target : Wreck = blackboard.get_value("target")
	blackboard.set_value("resources", target.resources)
	target.collect()
	return SUCCESS
