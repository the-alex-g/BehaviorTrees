extends Node

var teams := {}


func add_unit(unit:Unit)->void:
	if teams.has(unit.team_index):
		teams[unit.team_index].append(unit)
	else:
		teams[unit.team_index] = [unit]


func remove_unit(unit:Unit)->void:
	teams[unit.team_index].erase(unit)


func get_enemies(of:int)->Array:
	var enemies := []
	for team_index in teams.keys():
		if team_index != of:
			enemies.append_array(teams[team_index])
	return enemies
