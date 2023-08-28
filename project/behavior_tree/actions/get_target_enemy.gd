extends ActionLeaf

@export_enum("first", "second", "third") var target_priority := "first"


func tick(actor:Node, blackboard:Blackboard)->int:
	var enemies := ArmyTracker.get_enemies(actor.team_index)
	if enemies.size() > 0:
		blackboard.set_value("target_" + target_priority, _get_closest_enemy(actor.global_position, enemies))
		return SUCCESS
	else:
		return FAILURE


func _get_closest_enemy(global_actor_position, enemies:Array)->Node:
	var closest_enemy : Node
	for enemy in enemies:
		if closest_enemy == null:
			closest_enemy = enemy
		else:
			if (global_actor_position - enemy.global_position).length_squared() < (global_actor_position - closest_enemy.global_position).length_squared():
				closest_enemy = enemy
	return closest_enemy
