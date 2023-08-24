extends Node

var teams := {}
var wrecks := []


func add_target(unit:Node2D)->void:
	if teams.has(unit.team_index):
		teams[unit.team_index].append(unit)
	else:
		teams[unit.team_index] = [unit]


func add_wreck(wreck:Wreck)->void:
	wrecks.append(wreck)


func remove_wreck(wreck:Wreck)->void:
	wrecks.erase(wreck)


func remove_target(unit:Node2D)->void:
	teams[unit.team_index].erase(unit)


func get_enemies(of:int)->Array:
	var enemies := []
	for team_index in teams.keys():
		if team_index != of:
			enemies.append_array(teams[team_index])
	return enemies


func get_friendly_stations(of:int)->Array:
	var stations := []
	for target in teams[of]:
		if target is Station:
			stations.append(target)
	return stations
