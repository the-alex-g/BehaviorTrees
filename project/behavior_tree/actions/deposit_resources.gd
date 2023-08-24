extends ActionLeaf


func tick(_actor:Node, blackboard:Blackboard)->int:
	blackboard.get_value("target").deposit(blackboard.get_value("resources"))
	blackboard.erase_value("resources")
	blackboard.erase_value("target")
	return SUCCESS
