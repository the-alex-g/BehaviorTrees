extends ActionLeaf


func tick(actor:Node, blackboard:Blackboard)->int:
	var wrecks := ArmyTracker.wrecks
	if wrecks.size() > 0:
		blackboard.set_value("target", _get_closest_wreck(actor.global_position, wrecks))
		return SUCCESS
	else:
		return FAILURE


func _get_closest_wreck(global_actor_position, enemies:Array)->Node:
	var closest_wreck : Node
	for wreck in enemies:
		if closest_wreck == null:
			closest_wreck = wreck
		else:
			if (global_actor_position - wreck.global_position).length_squared() < (global_actor_position - closest_wreck.global_position).length_squared():
				closest_wreck = wreck
	return closest_wreck
