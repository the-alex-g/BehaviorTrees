class_name Station
extends Node2D

@export var team_index := 0


func _ready()->void:
	ArmyTracker.add_target(self)


func deposit(_resources:Dictionary)->void:
	print("deposit")


func hit(value:int)->void:
	print("ouch")


func _draw()->void:
	draw_circle(Vector2.ZERO, 10, Color.BLUE)
