extends Node2D

@onready var exp_bar_display: TextureProgressBar = $ExpBarDisplay
@onready var goal_number: RichTextLabel = $GoalNumber

var goal_value = 2;

func new_goal() -> void:
	goal_value = randi_range(0, 99999);
