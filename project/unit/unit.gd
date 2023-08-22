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
	ArmyTracker.add_unit(self)
	weapon_range += $CollisionShape2D.shape.radius * 2


func _die()->void:
	ArmyTracker.remove_unit(self)
	queue_free()


func hit(value:int)->void:
	health -= value
	if health <= 0:
		_die()


func _draw()->void:
	draw_circle(Vector2.ZERO, $CollisionShape2D.shape.radius, color)
