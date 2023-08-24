class_name Unit
extends CharacterBody2D

@export var team_index := 0
@export var weapon_range := 10
@export var speed := 50
@export var damage := 10
@export var health := 50
@export var attack_cooldown_time := 1.0
@export var color := Color.WHITE


func _ready()->void:
	ArmyTracker.add_target(self)
	weapon_range += $CollisionShape2D.shape.radius * 2


func _die()->void:
	_drop_wreck()
	ArmyTracker.remove_target(self)
	queue_free()


func hit(value:int)->void:
	health -= value
	if health <= 0:
		_die()


func _drop_wreck()->void:
	var wreck : Wreck = load("res://unit/wreck.tscn").instantiate()
	wreck.position = global_position
	get_parent().add_child(wreck)


func _draw()->void:
	draw_circle(Vector2.ZERO, $CollisionShape2D.shape.radius, color)
