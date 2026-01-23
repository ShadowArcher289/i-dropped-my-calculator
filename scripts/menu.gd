extends Control

@onready var toggle_menu: Button = $ToggleMenu
@onready var text_display: Node2D = $TextDisplay

func _ready() -> void:
	toggle_menu.focus_mode = Control.FOCUS_NONE;

func _on_toggle_menu_pressed() -> void:
	if(text_display.is_visible_in_tree()):
		text_display.hide();
	else:
		text_display.show();
