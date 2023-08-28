extends ActionLeaf

@export_enum("first", "second", "third") var target_priority := "first"


func tick(_actor:Node, blackboard:Blackboard)->int:
	var target : Wreck = blackboard.get_value("target_" + target_priority)
	blackboard.set_value("resources", target.resources)
	target.collect()
	return SUCCESS
