extends Unit

@export var collection_range := 20


# Make a UE-style behavior tree editor that uses just scripts,
# in order to eliminate the need for a new scene for every action.

# Are multiple trees governing the behavior of a single actor OK? -> collector
# stops moving when attacking

# How should a wait node be handled? My custom implementation was as follows:
#
#@export var delay := 0.0
#
#var _wait_time := 0.0
#
#
#func tick(_actor:Node, blackboard:Dictionary)->int:
#	_wait_time -= blackboard.delta
#	if _wait_time <= 0.0:
#		_wait_time = delay
#		return SUCCESS
#	return RUNNING
#
# also -> attack_cooldown.gd

# Who should move the actor, the actor itself or the node?
# -> goblin demo & move_towards_target action
# note custom behavior tree where the root feeds delta into the blackboard on process

# Are export variables OK to modify the behavior of a single action node?

# Why in triptych beans does the beehave_tree node have an export variable
# for a blackboard AND an internal blackboard option???
# They would function EXACTLY THE SAME, and one is OBVIOUSLY BETTER!!!!

# Why is "blackboard" even a class? A simple dictionary would be better.

# I haven't looked at them carefully, but the beehave nodes seem WAY
# more complicated than they need to be. I made a custom tree where the root node had 17
# lines of code, including white space. The beehave tree root has 225 lines of code.
# I'm sure some of it is necessary plugin script... but my tree worked too.

# Sure takes a lot of clicks to get to the beehave tree debugger panel.
# Very difficult, because the trees will be running while you frantically
# attempt to navigate through the editor and get back to the execution before the event
# that you're trying to catch occurs.
# this would be less of a problem on a two-monitor setup.

# There's no (obvious) way to give the BeeHave tree multiple actors to run on.
# I just added this to my custom tree because I realized what it said in the e-mail,
# but the best way I could quickly think of to do it was to have the actor subscribe to the tree
# instead of the other way around. I could have done it the other way, but that would require an
# untyped array export var, which are unpleasant at best to work with
# (add a slot, type-hint the slot, add a value to the slot).
