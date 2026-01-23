extends Node2D

@onready var exp_bar_display: TextureProgressBar = $ExpBarDisplay
@onready var level_display: RichTextLabel = $LevelDisplay
@onready var goal_number_display: RichTextLabel = $GoalNumberDisplay

var goal_value = 2;
var experience = 0;
var level = 0;

func _ready() -> void:
	SignalBus.calculated_result.connect(_result_calculated);

func new_goal() -> void:
	goal_value = randi_range(0, 999);
	goal_number_display.text = str(goal_value);

func gain_exp(gained_exp: int) -> void: ## increase exp
	var old_level = level;
	experience += gained_exp;
	level = int(experience/100.0);
	
	exp_bar_display.value = experience % 100;
	level_display.text = str(int(level));
	
	
	SoundManager.gain_exp.play();
	if (old_level != level): # play level up sound if the level changed
		SoundManager.level_up.play();
		if(level >= 99.0): ## play celebration sfx when the level is above 99
			SoundManager.celebration.play();
			SignalBus.disable_random.emit(); # disable randomness at level 99
		

func _result_calculated(result: float, operation: String) -> void:
	if((result >= float(goal_value-0.5) && (result <= float(goal_value+0.5)))):
		var gained_exp = 0;
		match operation:
			"/":
				gained_exp = (50);
			"*":
				gained_exp = (35);
			"-":
				gained_exp = (30);
			"+":
				gained_exp = (25);
			_:
				print_debug("invalid operation: " + operation);
			
		if(result == float(goal_value)): # tripple the gained exp if the exact result is returned
			gained_exp *= 2;
		
		gain_exp(gained_exp);
		new_goal();
			
