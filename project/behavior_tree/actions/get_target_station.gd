extends ActionLeaf


func tick(actor:Node, blackboard:Blackboard)->int:
	var stations := ArmyTracker.get_friendly_stations(actor.team_index)
	if stations.size() > 0:
		blackboard.set_value("target", _get_closest_station(actor.global_position, stations))
		return SUCCESS
	else:
		return FAILURE


func _get_closest_station(global_actor_position, stations:Array)->Node:
	var closest_station : Node
	for station in stations:
		if closest_station == null:
			closest_station = station
		else:
			if (global_actor_position - station.global_position).length_squared() < (global_actor_position - closest_station.global_position).length_squared():
				closest_station = station
	return closest_station
