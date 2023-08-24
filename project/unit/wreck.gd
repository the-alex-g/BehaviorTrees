class_name Wreck
extends Node2D

var resources := {}


func _ready()->void:
	ArmyTracker.add_wreck(self)


func collect()->void:
	ArmyTracker.remove_wreck(self)
	queue_free()


func _draw()->void:
	draw_circle(Vector2.ZERO, 7, Color.GOLD)
