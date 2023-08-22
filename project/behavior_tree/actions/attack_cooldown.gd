extends ActionLeaf

var time_left := 0.0


func _process(delta:float)->void:
	time_left -= delta


func tick(actor:Node, _blackboard:Blackboard)->int:
	if time_left <= 0.0:
		time_left = actor.attack_cooldown_time
		return SUCCESS
	return RUNNING
