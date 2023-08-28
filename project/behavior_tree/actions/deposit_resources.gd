extends ActionLeaf

@export_enum("first", "second", "third") var target_priority := "first"


func tick(_actor:Node, blackboard:Blackboard)->int:
	blackboard.get_value("target_" + target_priority).deposit(blackboard.get_value("resources"))
	blackboard.erase_value("resources")
	blackboard.erase_value("target_" + target_priority)
	return SUCCESS
