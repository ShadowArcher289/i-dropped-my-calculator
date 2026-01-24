extends Node2D

# FEATURES TO ADD: TODO: Allow Decimals, Keybind computer buttons.

@onready var button_1: Button = $Buttons/button1
@onready var button_2: Button = $Buttons/button2
@onready var button_3: Button = $Buttons/button3
@onready var button_4: Button = $Buttons/button4
@onready var button_5: Button = $Buttons/button5
@onready var button_6: Button = $Buttons/button6
@onready var button_7: Button = $Buttons/button7
@onready var button_8: Button = $Buttons/button8
@onready var button_9: Button = $Buttons/button9
@onready var button_0: Button = $Buttons/button0
@onready var button_divide: Button = $Buttons/buttonDivide
@onready var button_multiply: Button = $Buttons/buttonMultiply
@onready var button_subtract: Button = $Buttons/buttonSubtract
@onready var button_add: Button = $Buttons/buttonAdd
@onready var button_enter: Button = $Buttons/buttonEnter
@onready var button_clear: Button = $Buttons/buttonClear

@onready var screen_text: RichTextLabel = $ScreenText

var do_random = true; ## true to do random output, false to do normal output

var screen_display = "";
var calculation: Array = [];

func _ready() -> void:
	SignalBus.disable_random.connect(_disable_random);
	SignalBus.enable_random.connect(_enable_random);

	button_1.focus_mode = Control.FOCUS_NONE;
	button_2.focus_mode = Control.FOCUS_NONE;
	button_3.focus_mode = Control.FOCUS_NONE;
	button_4.focus_mode = Control.FOCUS_NONE;
	button_5.focus_mode = Control.FOCUS_NONE;
	button_6.focus_mode = Control.FOCUS_NONE;
	button_7.focus_mode = Control.FOCUS_NONE;
	button_8.focus_mode = Control.FOCUS_NONE;
	button_9.focus_mode = Control.FOCUS_NONE;
	button_0.focus_mode = Control.FOCUS_NONE;
	button_divide.focus_mode = Control.FOCUS_NONE;
	button_multiply.focus_mode = Control.FOCUS_NONE;
	button_subtract.focus_mode = Control.FOCUS_NONE;
	button_add.focus_mode = Control.FOCUS_NONE;
	button_enter.focus_mode = Control.FOCUS_NONE;
	button_clear.focus_mode = Control.FOCUS_NONE;

func _input(event: InputEvent) -> void:
	pass
	#if(event.is_action_pressed("one")):
		#_on_button_1_pressed();
		#button_1.button_pressed = true;
		#await get_tree().create_timer(0.1).timeout;
		#button_1.button_pressed = false;
	#elif(event.is_action_pressed("two")):
		#_on_button_2_pressed();
		#button_2.button_pressed = true;
		#await get_tree().create_timer(0.1).timeout;
		#button_2.button_pressed = false;
	#elif(event.is_action_pressed("three")):
		#_on_button_3_pressed();
		#button_3.button_pressed = true;
		#await get_tree().create_timer(0.1).timeout;
		#button_3.button_pressed = false;
	#elif(event.is_action_pressed("four")):
		#_on_button_4_pressed();
		#button_4.button_pressed = true;
		#await get_tree().create_timer(0.1).timeout;
		#button_4.button_pressed = false;
	#elif(event.is_action_pressed("five")):
		#_on_button_5_pressed();
		#button_5.button_pressed = true;
		#await get_tree().create_timer(0.1).timeout;
		#button_5.button_pressed = false;
	#elif(event.is_action_pressed("six")):
		#_on_button_6_pressed();
		#button_6.button_pressed = true;
		#await get_tree().create_timer(0.1).timeout;
		#button_6.button_pressed = false;
	#elif(event.is_action_pressed("seven")):
		#_on_button_7_pressed();
		#button_7.button_pressed = true;
		#await get_tree().create_timer(0.1).timeout;
		#button_7.button_pressed = false;
	#elif(event.is_action_pressed("eight")):
		#_on_button_8_pressed();
		#button_8.button_pressed = true;
		#await get_tree().create_timer(0.1).timeout;
		#button_8.button_pressed = false;
	#elif(event.is_action_pressed("nine")):
		#_on_button_9_pressed();
		#button_9.button_pressed = true;
		#await get_tree().create_timer(0.1).timeout;
		#button_9.button_pressed = false;
	#elif(event.is_action_pressed("zero")):
		#_on_button_0_pressed();
		#button_0.button_pressed = true;
		#await get_tree().create_timer(0.1).timeout;
		#button_0.button_pressed = false;
	#elif(event.is_action_pressed("divide")):
		#_on_button_divide_pressed()
		#button_divide.button_pressed = true;
		#await get_tree().create_timer(0.1).timeout;
		#button_divide.button_pressed = false;
	#elif(event.is_action_pressed("multiply")):
		#_on_button_multiply_pressed()
		#button_multiply.button_pressed = true;
		#await get_tree().create_timer(0.1).timeout;
		#button_multiply.button_pressed = false;
	#elif(event.is_action_pressed("subtract")):
		#_on_button_subtract_pressed()
		#button_subtract.button_pressed = true;
		#await get_tree().create_timer(0.1).timeout;
		#button_subtract.button_pressed = false;
	#elif(event.is_action_pressed("add")):
		#_on_button_add_pressed()
		#button_add.button_pressed = true;
		#await get_tree().create_timer(0.1).timeout;
		#button_add.button_pressed = false;
	#elif(event.is_action_pressed("equals")):
		#_on_button_enter_pressed()
		#button_enter.button_pressed = true;
		#await get_tree().create_timer(0.1).timeout;
		#button_enter.button_pressed = false;
	#elif(event.is_action_pressed("clear")):
		#_on_button_clear_pressed()
		#button_clear.button_pressed = true;
		#await get_tree().create_timer(0.1).timeout;
		#button_clear.button_pressed = false;
		

func _disable_random() -> void:
	print_debug("Randomness Disabled");
	do_random = false;

func _enable_random() -> void:
	print_debug("Randomness Enabled");
	do_random = true;

func divide(x, y) -> float: ## x / y
	return float(x) / float(y);
	
func multiply(x, y) -> float: ## x * y
	return float(x) * float(y);
	
func subtract(x, y) -> float: ## x - y
	return float(x) - float(y);
	
func addition(x, y) -> float: ## x + y
	return float(x) + float(y);


func update_screen() -> void: ## updates the claculator screen with the text from screen_display
	screen_text.text = screen_display;

func run_calc() -> float:
	
	var x = "";
	var operation = "";
	var y = "";
	
	screen_display += " = ";
	
	var final_result = null;
	
	var i: int = 0;
	
	if(calculation.size() == 1):
		final_result = float(calculation.get(0));
	
	while (i < calculation.size()):
		if(!calculation.get(i).is_valid_float()): # pass non-numeric values
			continue;
		else:
			print(str(calculation) + " | " + str(i))
			x = calculation.get(i);
			operation = "";
			y = "";
			
			if(final_result != null): # set x to the last result if one is present
				x = final_result;
			else: 
				x = calculation.get(i);
				operation = calculation.get(i+1);
				y = calculation.get(i+2);
				
			
			if(x != null && y != null):
				match operation:
					"/":
						final_result = divide(x, y);
						print("unmodified_result: " + str(final_result));
						if(do_random): # randomizer
							final_result *= randf_range(0.9, 1.1)
							final_result = snapped(final_result, 0.01);
					"*":
						final_result = multiply(x, y);
						print("unmodified_result: " + str(final_result));
						if(do_random): # randomizer
							final_result *= randf_range(0.8, 1.2)
							final_result = snapped(final_result, 0.01);
					"-":
						final_result = subtract(x, y);
						print("unmodified_result: " + str(final_result));
						if(do_random): # randomizer
							final_result *= randf_range(0.75, 1.35)
							final_result = snapped(final_result, 0.01);
					"+":
						final_result = addition(x, y);
						print("unmodified_result: " + str(final_result));
						if(do_random): # randomizer
							final_result *= randf_range(0.6, 1.4)
							final_result = snapped(final_result, 0.01);
			else:
				final_result = null;
			
			if((i+3) >= calculation.size()):
				break;
			i = i + 2; # move by 2 values
	
	calculation.resize(0); # reset the calculation array
	calculation.append(str(final_result));
	
	screen_display += str(final_result) + "\n" + str(final_result); # update screen
	
	if(final_result == null || is_nan(final_result) || is_inf(final_result)): # account for is inf or nan
		print("ran");
		screen_display += "\n0.0";
		final_result = 0.0;
		
		calculation.resize(0); # reset the calculation array
		calculation.append(str(final_result));
		
		print(screen_display + str(calculation))
		
	update_screen();
	SignalBus.calculated_result.emit(float(final_result), operation);
	return float(final_result);

func add_to_calc(value: String) -> void: ## adds the input to the calculation, and calls to update the screen
	var last_index = calculation.size()-1; ## the last index of the calculation array
	
	if(calculation.is_empty()):
		if(value.is_valid_float()):
			calculation.append(value);
			screen_display += value;
	else:
		if(value.is_valid_float()): # run logic if the value is a number.
			if(!calculation.get(last_index).is_valid_float()): # add to the array if the previous value is not a number
				calculation.append(value);
			else: # update the last value in the array if it is a valid number (ex: 1 -> 13)
				calculation.set(last_index, calculation.get(last_index) + value);
			screen_display += value;
		else: # append non-number values to calculation
			if(calculation.get(last_index).is_valid_float()): # do not put two non-number values next to eachother
				calculation.append(value);
				screen_display += value;
	
	update_screen();

func button_pressed() -> void:
	SoundManager.button_press.play(0.01);

func clear_calc() -> void:
	print(str(calculation))
	calculation = ["0.0"];
	screen_display = "0.0";
	update_screen();

func _on_button_1_pressed() -> void:
	button_pressed();
	add_to_calc("1");

func _on_button_2_pressed() -> void:
	button_pressed();
	add_to_calc("2");

func _on_button_3_pressed() -> void:
	button_pressed();
	add_to_calc("3");

func _on_button_4_pressed() -> void:
	button_pressed();
	add_to_calc("4");

func _on_button_5_pressed() -> void:
	button_pressed();
	add_to_calc("5");

func _on_button_6_pressed() -> void:
	button_pressed();
	add_to_calc("6");
	
func _on_button_7_pressed() -> void:
	button_pressed();
	add_to_calc("7");

func _on_button_8_pressed() -> void:
	button_pressed();
	add_to_calc("8");

func _on_button_9_pressed() -> void:
	button_pressed();
	add_to_calc("9");

func _on_button_0_pressed() -> void:
	button_pressed();
	add_to_calc("0");

func _on_button_divide_pressed() -> void:
	button_pressed();
	add_to_calc("/");

func _on_button_multiply_pressed() -> void:
	button_pressed();
	add_to_calc("*");

func _on_button_subtract_pressed() -> void:
	button_pressed();
	add_to_calc("-");

func _on_button_add_pressed() -> void:
	button_pressed();
	add_to_calc("+");

func _on_button_enter_pressed() -> void:
	button_pressed();
	print(run_calc());

func _on_button_clear_pressed() -> void:
	SoundManager.clear.play(0.1);
	await get_tree().create_timer(0.08).timeout;
	clear_calc();
