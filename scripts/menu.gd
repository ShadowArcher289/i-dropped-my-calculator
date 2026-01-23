extends Control

@onready var toggle_menu: Button = $ToggleMenu
@onready var text_display: Node2D = $TextDisplay

@onready var brokenness_toggle: CheckButton = $BrokennessToggle

func _ready() -> void:
	toggle_menu.focus_mode = Control.FOCUS_NONE;
	brokenness_toggle.focus_mode = Control.FOCUS_NONE;

func _on_toggle_menu_pressed() -> void:
	if(text_display.is_visible_in_tree()):
		text_display.hide();
	else:
		text_display.show();


func _on_check_button_toggled(toggled_on: bool) -> void:
	if(toggled_on):
		SignalBus.enable_random.emit();
	else:
		SignalBus.disable_random.emit();
